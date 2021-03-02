library marvel;

import 'dart:convert';

import 'package:crypto/crypto.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'configuration.dart';

part 'marvel.freezed.dart';
part 'marvel.g.dart';

final dioProvider = Provider((ref) => Dio());

final repositoryProvider = Provider((ref) => MarvelRepository(ref.read));

class MarvelRepository {
  MarvelRepository(
    this._read, {
    int Function() getCurrentTimestamp,
  }) : _getCurrentTimestamp = getCurrentTimestamp ??
            (() => DateTime.now().millisecondsSinceEpoch);

  final Reader _read;
  final int Function() _getCurrentTimestamp;
  final _characterCache = <String, Character>{};

  Future<MarvelListCharactersReponse> fetchCharacters({
    @required int offset,
    int limit,
    String nameStartsWith,
    CancelToken cancelToken,
  }) async {
    final cleanNameFilter = nameStartsWith?.trim();

    final response = await _get('characters', queryParameters: <String, Object>{
      'offset': offset,
      if (limit != null) 'limit': limit,
      if (cleanNameFilter != null && cleanNameFilter.isNotEmpty)
        'nameStartsWith': cleanNameFilter,
    });

    final result = MarvelListCharactersReponse(
      characters: response.data.results.map((e) {
        return Character.fromJson(e);
      }).toList(growable: false),
      totalCount: response.data.total,
    );

    for (final character in result.characters) {
      _characterCache[character.id.toString()] = character;
    }

    return result;
  }

  Future<Character> fetchCharacter(
    String id, {
    CancelToken cancelToken,
  }) async {
    // Don't fetch the Character if it was already obtained previously, either
    // in the home page or in the detail page.
    if (_characterCache.containsKey(id)) {
      return _characterCache[id];
    }

    final response = await _get('characters/$id', cancelToken: cancelToken);
    return Character.fromJson(response.data.results.single);
  }

  Future<MarvelResponse> _get(
    String path, {
    Map<String, Object> queryParameters,
    CancelToken cancelToken,
  }) async {
    final configs = await _read(configurationsProvider.future);

    final timestamp = _getCurrentTimestamp();
    final hash = md5
        .convert(
          utf8.encode('$timestamp${configs.privateKey}${configs.publicKey}'),
        )
        .toString();

    final result = await _read(dioProvider).get<Map<String, Object>>(
      'https://gateway.marvel.com/v1/public/$path',
      cancelToken: cancelToken,
      queryParameters: <String, Object>{
        'apikey': configs.publicKey,
        'ts': timestamp,
        'hash': hash,
        ...?queryParameters,
      },
      // TODO deserialize error message
    );
    return MarvelResponse.fromJson(result.data);
  }
}

@freezed
abstract class MarvelListCharactersReponse with _$MarvelListCharactersReponse {
  factory MarvelListCharactersReponse({
    @required int totalCount,
    @required List<Character> characters,
  }) = _MarvelListCharactersReponse;
}

@freezed
abstract class Character with _$Character {
  factory Character({
    @required int id,
    @required String name,
    @required Thumbnail thumbnail,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}

@freezed
abstract class Thumbnail with _$Thumbnail {
  factory Thumbnail({
    @required String path,
    @required String extension,
  }) = _Thumbnail;

  Thumbnail._();

  factory Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailFromJson(json);

  @late
  String get url => '${path.replaceFirst('http://', 'https://')}.$extension';
}

@freezed
abstract class MarvelResponse with _$MarvelResponse {
  factory MarvelResponse(MarvelData data) = _MarvelResponse;

  factory MarvelResponse.fromJson(Map<String, dynamic> json) =>
      _$MarvelResponseFromJson(json);
}

@freezed
abstract class MarvelData with _$MarvelData {
  factory MarvelData(
    List<Map<String, dynamic>> results,
    int total,
  ) = _MarvelData;

  factory MarvelData.fromJson(Map<String, dynamic> json) =>
      _$MarvelDataFromJson(json);
}

// @immutable
// class Thumbnail {
//   const Thumbnail({@required String path, @required String extension})
//       : _path = path,
//         _extension = extension,
//         assert(path != null),
//         assert(extension != null);

//   final String _path;
//   String get path => _path;

//   final String _extension;
//   String get extension => _extension;

//   String get url {
//     return '${_path.replaceFirst('http://', 'https://')}.$_extension';
//   }

//   Thumbnail copyWith({String path, String extension}) => Thumbnail(
//         path: path ?? this._path,
//         extension: extension ?? this._extension,
//       );

//   @override
//   String toString() {
//     return 'Thumbnail { path: $_path, extension = $_extension }';
//   }

//   @override
//   bool operator ==(Object other) =>
//       other is Thumbnail &&
//       other.path == _path &&
//       other.extension == _extension;

//   @override
//   int get hashCode => hashValues(path, extension);

//   // Thumbnail.fromJson(Map<String, dynamic> json)
//   //     : _path = json['path'],
//   //       _extension = json['extension'];

//   factory Thumbnail.fromJson(Map<String, dynamic> json) => _$ThumbnailFromJson(json);
//   Map<String, dynamic> toJson() => _$ThumbnailToJson(this);
// }

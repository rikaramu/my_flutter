library marvel;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'marvel.freezed.dart';
// part 'marvel.g.dart';

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

  // final String _url = '${path.replaceFirst('http://', 'https://')}.$extension';
  // String get url => _url;
}

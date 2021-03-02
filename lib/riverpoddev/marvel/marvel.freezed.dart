// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of marvel;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MarvelListCharactersReponseTearOff {
  const _$MarvelListCharactersReponseTearOff();

// ignore: unused_element
  _MarvelListCharactersReponse call(
      {@required int totalCount, @required List<Character> characters}) {
    return _MarvelListCharactersReponse(
      totalCount: totalCount,
      characters: characters,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MarvelListCharactersReponse = _$MarvelListCharactersReponseTearOff();

/// @nodoc
mixin _$MarvelListCharactersReponse {
  int get totalCount;
  List<Character> get characters;

  @JsonKey(ignore: true)
  $MarvelListCharactersReponseCopyWith<MarvelListCharactersReponse>
      get copyWith;
}

/// @nodoc
abstract class $MarvelListCharactersReponseCopyWith<$Res> {
  factory $MarvelListCharactersReponseCopyWith(
          MarvelListCharactersReponse value,
          $Res Function(MarvelListCharactersReponse) then) =
      _$MarvelListCharactersReponseCopyWithImpl<$Res>;
  $Res call({int totalCount, List<Character> characters});
}

/// @nodoc
class _$MarvelListCharactersReponseCopyWithImpl<$Res>
    implements $MarvelListCharactersReponseCopyWith<$Res> {
  _$MarvelListCharactersReponseCopyWithImpl(this._value, this._then);

  final MarvelListCharactersReponse _value;
  // ignore: unused_field
  final $Res Function(MarvelListCharactersReponse) _then;

  @override
  $Res call({
    Object totalCount = freezed,
    Object characters = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: totalCount == freezed ? _value.totalCount : totalCount as int,
      characters: characters == freezed
          ? _value.characters
          : characters as List<Character>,
    ));
  }
}

/// @nodoc
abstract class _$MarvelListCharactersReponseCopyWith<$Res>
    implements $MarvelListCharactersReponseCopyWith<$Res> {
  factory _$MarvelListCharactersReponseCopyWith(
          _MarvelListCharactersReponse value,
          $Res Function(_MarvelListCharactersReponse) then) =
      __$MarvelListCharactersReponseCopyWithImpl<$Res>;
  @override
  $Res call({int totalCount, List<Character> characters});
}

/// @nodoc
class __$MarvelListCharactersReponseCopyWithImpl<$Res>
    extends _$MarvelListCharactersReponseCopyWithImpl<$Res>
    implements _$MarvelListCharactersReponseCopyWith<$Res> {
  __$MarvelListCharactersReponseCopyWithImpl(
      _MarvelListCharactersReponse _value,
      $Res Function(_MarvelListCharactersReponse) _then)
      : super(_value, (v) => _then(v as _MarvelListCharactersReponse));

  @override
  _MarvelListCharactersReponse get _value =>
      super._value as _MarvelListCharactersReponse;

  @override
  $Res call({
    Object totalCount = freezed,
    Object characters = freezed,
  }) {
    return _then(_MarvelListCharactersReponse(
      totalCount: totalCount == freezed ? _value.totalCount : totalCount as int,
      characters: characters == freezed
          ? _value.characters
          : characters as List<Character>,
    ));
  }
}

/// @nodoc
class _$_MarvelListCharactersReponse implements _MarvelListCharactersReponse {
  _$_MarvelListCharactersReponse(
      {@required this.totalCount, @required this.characters})
      : assert(totalCount != null),
        assert(characters != null);

  @override
  final int totalCount;
  @override
  final List<Character> characters;

  @override
  String toString() {
    return 'MarvelListCharactersReponse(totalCount: $totalCount, characters: $characters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MarvelListCharactersReponse &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.characters, characters) ||
                const DeepCollectionEquality()
                    .equals(other.characters, characters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(characters);

  @JsonKey(ignore: true)
  @override
  _$MarvelListCharactersReponseCopyWith<_MarvelListCharactersReponse>
      get copyWith => __$MarvelListCharactersReponseCopyWithImpl<
          _MarvelListCharactersReponse>(this, _$identity);
}

abstract class _MarvelListCharactersReponse
    implements MarvelListCharactersReponse {
  factory _MarvelListCharactersReponse(
      {@required int totalCount,
      @required List<Character> characters}) = _$_MarvelListCharactersReponse;

  @override
  int get totalCount;
  @override
  List<Character> get characters;
  @override
  @JsonKey(ignore: true)
  _$MarvelListCharactersReponseCopyWith<_MarvelListCharactersReponse>
      get copyWith;
}

Character _$CharacterFromJson(Map<String, dynamic> json) {
  return _Character.fromJson(json);
}

/// @nodoc
class _$CharacterTearOff {
  const _$CharacterTearOff();

// ignore: unused_element
  _Character call(
      {@required int id,
      @required String name,
      @required Thumbnail thumbnail}) {
    return _Character(
      id: id,
      name: name,
      thumbnail: thumbnail,
    );
  }

// ignore: unused_element
  Character fromJson(Map<String, Object> json) {
    return Character.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Character = _$CharacterTearOff();

/// @nodoc
mixin _$Character {
  int get id;
  String get name;
  Thumbnail get thumbnail;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CharacterCopyWith<Character> get copyWith;
}

/// @nodoc
abstract class $CharacterCopyWith<$Res> {
  factory $CharacterCopyWith(Character value, $Res Function(Character) then) =
      _$CharacterCopyWithImpl<$Res>;
  $Res call({int id, String name, Thumbnail thumbnail});

  $ThumbnailCopyWith<$Res> get thumbnail;
}

/// @nodoc
class _$CharacterCopyWithImpl<$Res> implements $CharacterCopyWith<$Res> {
  _$CharacterCopyWithImpl(this._value, this._then);

  final Character _value;
  // ignore: unused_field
  final $Res Function(Character) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      thumbnail:
          thumbnail == freezed ? _value.thumbnail : thumbnail as Thumbnail,
    ));
  }

  @override
  $ThumbnailCopyWith<$Res> get thumbnail {
    if (_value.thumbnail == null) {
      return null;
    }
    return $ThumbnailCopyWith<$Res>(_value.thumbnail, (value) {
      return _then(_value.copyWith(thumbnail: value));
    });
  }
}

/// @nodoc
abstract class _$CharacterCopyWith<$Res> implements $CharacterCopyWith<$Res> {
  factory _$CharacterCopyWith(
          _Character value, $Res Function(_Character) then) =
      __$CharacterCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, Thumbnail thumbnail});

  @override
  $ThumbnailCopyWith<$Res> get thumbnail;
}

/// @nodoc
class __$CharacterCopyWithImpl<$Res> extends _$CharacterCopyWithImpl<$Res>
    implements _$CharacterCopyWith<$Res> {
  __$CharacterCopyWithImpl(_Character _value, $Res Function(_Character) _then)
      : super(_value, (v) => _then(v as _Character));

  @override
  _Character get _value => super._value as _Character;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object thumbnail = freezed,
  }) {
    return _then(_Character(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      thumbnail:
          thumbnail == freezed ? _value.thumbnail : thumbnail as Thumbnail,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Character implements _Character {
  _$_Character(
      {@required this.id, @required this.name, @required this.thumbnail})
      : assert(id != null),
        assert(name != null),
        assert(thumbnail != null);

  factory _$_Character.fromJson(Map<String, dynamic> json) =>
      _$_$_CharacterFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final Thumbnail thumbnail;

  @override
  String toString() {
    return 'Character(id: $id, name: $name, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Character &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(thumbnail);

  @JsonKey(ignore: true)
  @override
  _$CharacterCopyWith<_Character> get copyWith =>
      __$CharacterCopyWithImpl<_Character>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CharacterToJson(this);
  }
}

abstract class _Character implements Character {
  factory _Character(
      {@required int id,
      @required String name,
      @required Thumbnail thumbnail}) = _$_Character;

  factory _Character.fromJson(Map<String, dynamic> json) =
      _$_Character.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  Thumbnail get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$CharacterCopyWith<_Character> get copyWith;
}

Thumbnail _$ThumbnailFromJson(Map<String, dynamic> json) {
  return _Thumbnail.fromJson(json);
}

/// @nodoc
class _$ThumbnailTearOff {
  const _$ThumbnailTearOff();

// ignore: unused_element
  _Thumbnail call({@required String path, @required String extension}) {
    return _Thumbnail(
      path: path,
      extension: extension,
    );
  }

// ignore: unused_element
  Thumbnail fromJson(Map<String, Object> json) {
    return Thumbnail.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Thumbnail = _$ThumbnailTearOff();

/// @nodoc
mixin _$Thumbnail {
  String get path;
  String get extension;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ThumbnailCopyWith<Thumbnail> get copyWith;
}

/// @nodoc
abstract class $ThumbnailCopyWith<$Res> {
  factory $ThumbnailCopyWith(Thumbnail value, $Res Function(Thumbnail) then) =
      _$ThumbnailCopyWithImpl<$Res>;
  $Res call({String path, String extension});
}

/// @nodoc
class _$ThumbnailCopyWithImpl<$Res> implements $ThumbnailCopyWith<$Res> {
  _$ThumbnailCopyWithImpl(this._value, this._then);

  final Thumbnail _value;
  // ignore: unused_field
  final $Res Function(Thumbnail) _then;

  @override
  $Res call({
    Object path = freezed,
    Object extension = freezed,
  }) {
    return _then(_value.copyWith(
      path: path == freezed ? _value.path : path as String,
      extension: extension == freezed ? _value.extension : extension as String,
    ));
  }
}

/// @nodoc
abstract class _$ThumbnailCopyWith<$Res> implements $ThumbnailCopyWith<$Res> {
  factory _$ThumbnailCopyWith(
          _Thumbnail value, $Res Function(_Thumbnail) then) =
      __$ThumbnailCopyWithImpl<$Res>;
  @override
  $Res call({String path, String extension});
}

/// @nodoc
class __$ThumbnailCopyWithImpl<$Res> extends _$ThumbnailCopyWithImpl<$Res>
    implements _$ThumbnailCopyWith<$Res> {
  __$ThumbnailCopyWithImpl(_Thumbnail _value, $Res Function(_Thumbnail) _then)
      : super(_value, (v) => _then(v as _Thumbnail));

  @override
  _Thumbnail get _value => super._value as _Thumbnail;

  @override
  $Res call({
    Object path = freezed,
    Object extension = freezed,
  }) {
    return _then(_Thumbnail(
      path: path == freezed ? _value.path : path as String,
      extension: extension == freezed ? _value.extension : extension as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Thumbnail extends _Thumbnail {
  _$_Thumbnail({@required this.path, @required this.extension})
      : assert(path != null),
        assert(extension != null),
        super._();

  factory _$_Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$_$_ThumbnailFromJson(json);

  @override
  final String path;
  @override
  final String extension;

  bool _didurl = false;
  String _url;

  @override
  String get url {
    if (_didurl == false) {
      _didurl = true;
      _url = '${path.replaceFirst('http://', 'https://')}.$extension';
    }
    return _url;
  }

  @override
  String toString() {
    return 'Thumbnail(path: $path, extension: $extension, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Thumbnail &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.extension, extension) ||
                const DeepCollectionEquality()
                    .equals(other.extension, extension)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(extension);

  @JsonKey(ignore: true)
  @override
  _$ThumbnailCopyWith<_Thumbnail> get copyWith =>
      __$ThumbnailCopyWithImpl<_Thumbnail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ThumbnailToJson(this);
  }
}

abstract class _Thumbnail extends Thumbnail {
  _Thumbnail._() : super._();
  factory _Thumbnail({@required String path, @required String extension}) =
      _$_Thumbnail;

  factory _Thumbnail.fromJson(Map<String, dynamic> json) =
      _$_Thumbnail.fromJson;

  @override
  String get path;
  @override
  String get extension;
  @override
  @JsonKey(ignore: true)
  _$ThumbnailCopyWith<_Thumbnail> get copyWith;
}

MarvelResponse _$MarvelResponseFromJson(Map<String, dynamic> json) {
  return _MarvelResponse.fromJson(json);
}

/// @nodoc
class _$MarvelResponseTearOff {
  const _$MarvelResponseTearOff();

// ignore: unused_element
  _MarvelResponse call(MarvelData data) {
    return _MarvelResponse(
      data,
    );
  }

// ignore: unused_element
  MarvelResponse fromJson(Map<String, Object> json) {
    return MarvelResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MarvelResponse = _$MarvelResponseTearOff();

/// @nodoc
mixin _$MarvelResponse {
  MarvelData get data;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MarvelResponseCopyWith<MarvelResponse> get copyWith;
}

/// @nodoc
abstract class $MarvelResponseCopyWith<$Res> {
  factory $MarvelResponseCopyWith(
          MarvelResponse value, $Res Function(MarvelResponse) then) =
      _$MarvelResponseCopyWithImpl<$Res>;
  $Res call({MarvelData data});

  $MarvelDataCopyWith<$Res> get data;
}

/// @nodoc
class _$MarvelResponseCopyWithImpl<$Res>
    implements $MarvelResponseCopyWith<$Res> {
  _$MarvelResponseCopyWithImpl(this._value, this._then);

  final MarvelResponse _value;
  // ignore: unused_field
  final $Res Function(MarvelResponse) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as MarvelData,
    ));
  }

  @override
  $MarvelDataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $MarvelDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$MarvelResponseCopyWith<$Res>
    implements $MarvelResponseCopyWith<$Res> {
  factory _$MarvelResponseCopyWith(
          _MarvelResponse value, $Res Function(_MarvelResponse) then) =
      __$MarvelResponseCopyWithImpl<$Res>;
  @override
  $Res call({MarvelData data});

  @override
  $MarvelDataCopyWith<$Res> get data;
}

/// @nodoc
class __$MarvelResponseCopyWithImpl<$Res>
    extends _$MarvelResponseCopyWithImpl<$Res>
    implements _$MarvelResponseCopyWith<$Res> {
  __$MarvelResponseCopyWithImpl(
      _MarvelResponse _value, $Res Function(_MarvelResponse) _then)
      : super(_value, (v) => _then(v as _MarvelResponse));

  @override
  _MarvelResponse get _value => super._value as _MarvelResponse;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_MarvelResponse(
      data == freezed ? _value.data : data as MarvelData,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MarvelResponse implements _MarvelResponse {
  _$_MarvelResponse(this.data) : assert(data != null);

  factory _$_MarvelResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_MarvelResponseFromJson(json);

  @override
  final MarvelData data;

  @override
  String toString() {
    return 'MarvelResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MarvelResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$MarvelResponseCopyWith<_MarvelResponse> get copyWith =>
      __$MarvelResponseCopyWithImpl<_MarvelResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MarvelResponseToJson(this);
  }
}

abstract class _MarvelResponse implements MarvelResponse {
  factory _MarvelResponse(MarvelData data) = _$_MarvelResponse;

  factory _MarvelResponse.fromJson(Map<String, dynamic> json) =
      _$_MarvelResponse.fromJson;

  @override
  MarvelData get data;
  @override
  @JsonKey(ignore: true)
  _$MarvelResponseCopyWith<_MarvelResponse> get copyWith;
}

MarvelData _$MarvelDataFromJson(Map<String, dynamic> json) {
  return _MarvelData.fromJson(json);
}

/// @nodoc
class _$MarvelDataTearOff {
  const _$MarvelDataTearOff();

// ignore: unused_element
  _MarvelData call(List<Map<String, dynamic>> results, int total) {
    return _MarvelData(
      results,
      total,
    );
  }

// ignore: unused_element
  MarvelData fromJson(Map<String, Object> json) {
    return MarvelData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MarvelData = _$MarvelDataTearOff();

/// @nodoc
mixin _$MarvelData {
  List<Map<String, dynamic>> get results;
  int get total;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MarvelDataCopyWith<MarvelData> get copyWith;
}

/// @nodoc
abstract class $MarvelDataCopyWith<$Res> {
  factory $MarvelDataCopyWith(
          MarvelData value, $Res Function(MarvelData) then) =
      _$MarvelDataCopyWithImpl<$Res>;
  $Res call({List<Map<String, dynamic>> results, int total});
}

/// @nodoc
class _$MarvelDataCopyWithImpl<$Res> implements $MarvelDataCopyWith<$Res> {
  _$MarvelDataCopyWithImpl(this._value, this._then);

  final MarvelData _value;
  // ignore: unused_field
  final $Res Function(MarvelData) _then;

  @override
  $Res call({
    Object results = freezed,
    Object total = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results as List<Map<String, dynamic>>,
      total: total == freezed ? _value.total : total as int,
    ));
  }
}

/// @nodoc
abstract class _$MarvelDataCopyWith<$Res> implements $MarvelDataCopyWith<$Res> {
  factory _$MarvelDataCopyWith(
          _MarvelData value, $Res Function(_MarvelData) then) =
      __$MarvelDataCopyWithImpl<$Res>;
  @override
  $Res call({List<Map<String, dynamic>> results, int total});
}

/// @nodoc
class __$MarvelDataCopyWithImpl<$Res> extends _$MarvelDataCopyWithImpl<$Res>
    implements _$MarvelDataCopyWith<$Res> {
  __$MarvelDataCopyWithImpl(
      _MarvelData _value, $Res Function(_MarvelData) _then)
      : super(_value, (v) => _then(v as _MarvelData));

  @override
  _MarvelData get _value => super._value as _MarvelData;

  @override
  $Res call({
    Object results = freezed,
    Object total = freezed,
  }) {
    return _then(_MarvelData(
      results == freezed
          ? _value.results
          : results as List<Map<String, dynamic>>,
      total == freezed ? _value.total : total as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MarvelData implements _MarvelData {
  _$_MarvelData(this.results, this.total)
      : assert(results != null),
        assert(total != null);

  factory _$_MarvelData.fromJson(Map<String, dynamic> json) =>
      _$_$_MarvelDataFromJson(json);

  @override
  final List<Map<String, dynamic>> results;
  @override
  final int total;

  @override
  String toString() {
    return 'MarvelData(results: $results, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MarvelData &&
            (identical(other.results, results) ||
                const DeepCollectionEquality()
                    .equals(other.results, results)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(results) ^
      const DeepCollectionEquality().hash(total);

  @JsonKey(ignore: true)
  @override
  _$MarvelDataCopyWith<_MarvelData> get copyWith =>
      __$MarvelDataCopyWithImpl<_MarvelData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MarvelDataToJson(this);
  }
}

abstract class _MarvelData implements MarvelData {
  factory _MarvelData(List<Map<String, dynamic>> results, int total) =
      _$_MarvelData;

  factory _MarvelData.fromJson(Map<String, dynamic> json) =
      _$_MarvelData.fromJson;

  @override
  List<Map<String, dynamic>> get results;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$MarvelDataCopyWith<_MarvelData> get copyWith;
}

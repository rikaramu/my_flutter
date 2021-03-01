// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of marvel;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
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

  @override
  String toString() {
    return 'Thumbnail(path: $path, extension: $extension)';
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

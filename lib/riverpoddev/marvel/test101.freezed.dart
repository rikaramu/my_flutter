// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'test101.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Test101 _$Test101FromJson(Map<String, dynamic> json) {
  return _Test101.fromJson(json);
}

/// @nodoc
class _$Test101TearOff {
  const _$Test101TearOff();

// ignore: unused_element
  _Test101 call({String id, String name}) {
    return _Test101(
      id: id,
      name: name,
    );
  }

// ignore: unused_element
  Test101 fromJson(Map<String, Object> json) {
    return Test101.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Test101 = _$Test101TearOff();

/// @nodoc
mixin _$Test101 {
  String get id;
  String get name;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $Test101CopyWith<Test101> get copyWith;
}

/// @nodoc
abstract class $Test101CopyWith<$Res> {
  factory $Test101CopyWith(Test101 value, $Res Function(Test101) then) =
      _$Test101CopyWithImpl<$Res>;
  $Res call({String id, String name});
}

/// @nodoc
class _$Test101CopyWithImpl<$Res> implements $Test101CopyWith<$Res> {
  _$Test101CopyWithImpl(this._value, this._then);

  final Test101 _value;
  // ignore: unused_field
  final $Res Function(Test101) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$Test101CopyWith<$Res> implements $Test101CopyWith<$Res> {
  factory _$Test101CopyWith(_Test101 value, $Res Function(_Test101) then) =
      __$Test101CopyWithImpl<$Res>;
  @override
  $Res call({String id, String name});
}

/// @nodoc
class __$Test101CopyWithImpl<$Res> extends _$Test101CopyWithImpl<$Res>
    implements _$Test101CopyWith<$Res> {
  __$Test101CopyWithImpl(_Test101 _value, $Res Function(_Test101) _then)
      : super(_value, (v) => _then(v as _Test101));

  @override
  _Test101 get _value => super._value as _Test101;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_Test101(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Test101 implements _Test101 {
  const _$_Test101({this.id, this.name});

  factory _$_Test101.fromJson(Map<String, dynamic> json) =>
      _$_$_Test101FromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'Test101(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Test101 &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$Test101CopyWith<_Test101> get copyWith =>
      __$Test101CopyWithImpl<_Test101>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_Test101ToJson(this);
  }
}

abstract class _Test101 implements Test101 {
  const factory _Test101({String id, String name}) = _$_Test101;

  factory _Test101.fromJson(Map<String, dynamic> json) = _$_Test101.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$Test101CopyWith<_Test101> get copyWith;
}

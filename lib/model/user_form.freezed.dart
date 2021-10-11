// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserForm _$UserFormFromJson(Map<String, dynamic> json) {
  return _UserForm.fromJson(json);
}

/// @nodoc
class _$UserFormTearOff {
  const _$UserFormTearOff();

  _UserForm call(
      String age, String name, String picture, List<String> tags, String uuid) {
    return _UserForm(
      age,
      name,
      picture,
      tags,
      uuid,
    );
  }

  UserForm fromJson(Map<String, Object> json) {
    return UserForm.fromJson(json);
  }
}

/// @nodoc
const $UserForm = _$UserFormTearOff();

/// @nodoc
mixin _$UserForm {
  String get age => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserFormCopyWith<UserForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFormCopyWith<$Res> {
  factory $UserFormCopyWith(UserForm value, $Res Function(UserForm) then) =
      _$UserFormCopyWithImpl<$Res>;
  $Res call(
      {String age,
      String name,
      String picture,
      List<String> tags,
      String uuid});
}

/// @nodoc
class _$UserFormCopyWithImpl<$Res> implements $UserFormCopyWith<$Res> {
  _$UserFormCopyWithImpl(this._value, this._then);

  final UserForm _value;
  // ignore: unused_field
  final $Res Function(UserForm) _then;

  @override
  $Res call({
    Object? age = freezed,
    Object? name = freezed,
    Object? picture = freezed,
    Object? tags = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_value.copyWith(
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserFormCopyWith<$Res> implements $UserFormCopyWith<$Res> {
  factory _$UserFormCopyWith(_UserForm value, $Res Function(_UserForm) then) =
      __$UserFormCopyWithImpl<$Res>;
  @override
  $Res call(
      {String age,
      String name,
      String picture,
      List<String> tags,
      String uuid});
}

/// @nodoc
class __$UserFormCopyWithImpl<$Res> extends _$UserFormCopyWithImpl<$Res>
    implements _$UserFormCopyWith<$Res> {
  __$UserFormCopyWithImpl(_UserForm _value, $Res Function(_UserForm) _then)
      : super(_value, (v) => _then(v as _UserForm));

  @override
  _UserForm get _value => super._value as _UserForm;

  @override
  $Res call({
    Object? age = freezed,
    Object? name = freezed,
    Object? picture = freezed,
    Object? tags = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_UserForm(
      age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserForm implements _UserForm {
  const _$_UserForm(this.age, this.name, this.picture, this.tags, this.uuid);

  factory _$_UserForm.fromJson(Map<String, dynamic> json) =>
      _$$_UserFormFromJson(json);

  @override
  final String age;
  @override
  final String name;
  @override
  final String picture;
  @override
  final List<String> tags;
  @override
  final String uuid;

  @override
  String toString() {
    return 'UserForm(age: $age, name: $name, picture: $picture, tags: $tags, uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserForm &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality()
                    .equals(other.picture, picture)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(picture) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(uuid);

  @JsonKey(ignore: true)
  @override
  _$UserFormCopyWith<_UserForm> get copyWith =>
      __$UserFormCopyWithImpl<_UserForm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserFormToJson(this);
  }
}

abstract class _UserForm implements UserForm {
  const factory _UserForm(String age, String name, String picture,
      List<String> tags, String uuid) = _$_UserForm;

  factory _UserForm.fromJson(Map<String, dynamic> json) = _$_UserForm.fromJson;

  @override
  String get age => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get picture => throw _privateConstructorUsedError;
  @override
  List<String> get tags => throw _privateConstructorUsedError;
  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserFormCopyWith<_UserForm> get copyWith =>
      throw _privateConstructorUsedError;
}

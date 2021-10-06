// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
class _$MessageTearOff {
  const _$MessageTearOff();

  _Message call(String userID, String urlAvatar, String username,
      String message, DateTime createdAt) {
    return _Message(
      userID,
      urlAvatar,
      username,
      message,
      createdAt,
    );
  }

  Message fromJson(Map<String, Object> json) {
    return Message.fromJson(json);
  }
}

/// @nodoc
const $Message = _$MessageTearOff();

/// @nodoc
mixin _$Message {
  String get userID => throw _privateConstructorUsedError;
  String get urlAvatar => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res>;
  $Res call(
      {String userID,
      String urlAvatar,
      String username,
      String message,
      DateTime createdAt});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  final Message _value;
  // ignore: unused_field
  final $Res Function(Message) _then;

  @override
  $Res call({
    Object? userID = freezed,
    Object? urlAvatar = freezed,
    Object? username = freezed,
    Object? message = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      userID: userID == freezed
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      urlAvatar: urlAvatar == freezed
          ? _value.urlAvatar
          : urlAvatar // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) then) =
      __$MessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userID,
      String urlAvatar,
      String username,
      String message,
      DateTime createdAt});
}

/// @nodoc
class __$MessageCopyWithImpl<$Res> extends _$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(_Message _value, $Res Function(_Message) _then)
      : super(_value, (v) => _then(v as _Message));

  @override
  _Message get _value => super._value as _Message;

  @override
  $Res call({
    Object? userID = freezed,
    Object? urlAvatar = freezed,
    Object? username = freezed,
    Object? message = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_Message(
      userID == freezed
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      urlAvatar == freezed
          ? _value.urlAvatar
          : urlAvatar // ignore: cast_nullable_to_non_nullable
              as String,
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Message implements _Message {
  const _$_Message(
      this.userID, this.urlAvatar, this.username, this.message, this.createdAt);

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$$_MessageFromJson(json);

  @override
  final String userID;
  @override
  final String urlAvatar;
  @override
  final String username;
  @override
  final String message;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Message(userID: $userID, urlAvatar: $urlAvatar, username: $username, message: $message, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Message &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)) &&
            (identical(other.urlAvatar, urlAvatar) ||
                const DeepCollectionEquality()
                    .equals(other.urlAvatar, urlAvatar)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userID) ^
      const DeepCollectionEquality().hash(urlAvatar) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$MessageCopyWith<_Message> get copyWith =>
      __$MessageCopyWithImpl<_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageToJson(this);
  }
}

abstract class _Message implements Message {
  const factory _Message(String userID, String urlAvatar, String username,
      String message, DateTime createdAt) = _$_Message;

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  String get userID => throw _privateConstructorUsedError;
  @override
  String get urlAvatar => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MessageCopyWith<_Message> get copyWith =>
      throw _privateConstructorUsedError;
}

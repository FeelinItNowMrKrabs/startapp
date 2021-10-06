// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      json['userID'] as String,
      json['urlAvatar'] as String,
      json['username'] as String,
      json['message'] as String,
      DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'urlAvatar': instance.urlAvatar,
      'username': instance.username,
      'message': instance.message,
      'createdAt': instance.createdAt.toIso8601String(),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      json['userID'] as String,
      json['name'] as String,
      json['urlAvatar'] as String,
      json['lastMessageTime'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'userID': instance.userID,
      'name': instance.name,
      'urlAvatar': instance.urlAvatar,
      'lastMessageTime': instance.lastMessageTime,
    };

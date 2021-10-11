// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserForm _$$_UserFormFromJson(Map<String, dynamic> json) => _$_UserForm(
      json['age'] as String,
      json['name'] as String,
      json['picture'] as String,
      (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      json['uuid'] as String,
    );

Map<String, dynamic> _$$_UserFormToJson(_$_UserForm instance) =>
    <String, dynamic>{
      'age': instance.age,
      'name': instance.name,
      'picture': instance.picture,
      'tags': instance.tags,
      'uuid': instance.uuid,
    };

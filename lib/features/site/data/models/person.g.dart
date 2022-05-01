// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Person _$$_PersonFromJson(Map<String, dynamic> json) => _$_Person(
      json['name'] as String,
      json['title'] as String,
      json['about'] as String,
      (json['pictures'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_PersonToJson(_$_Person instance) => <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'about': instance.about,
      'pictures': instance.pictures,
    };

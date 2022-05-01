// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkInfo _$$_WorkInfoFromJson(Map<String, dynamic> json) => _$_WorkInfo(
      json['status'] as String,
      json['type'] as String,
      (json['cities'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_WorkInfoToJson(_$_WorkInfo instance) =>
    <String, dynamic>{
      'status': instance.status,
      'type': instance.type,
      'cities': instance.cities,
    };

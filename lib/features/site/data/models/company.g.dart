// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Company _$$_CompanyFromJson(Map<String, dynamic> json) => _$_Company(
      json['title'] as String,
      json['name'] as String,
      json['website'] as String,
      json['startMonth'] as String,
      json['startYear'] as String,
      json['endMonth'] as String,
      json['endYear'] as String,
      json['city'] as String,
    );

Map<String, dynamic> _$$_CompanyToJson(_$_Company instance) =>
    <String, dynamic>{
      'title': instance.title,
      'name': instance.name,
      'website': instance.website,
      'startMonth': instance.startMonth,
      'startYear': instance.startYear,
      'endMonth': instance.endMonth,
      'endYear': instance.endYear,
      'city': instance.city,
    };

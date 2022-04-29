// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'portfolio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Portfolio _$$_PortfolioFromJson(Map<String, dynamic> json) => _$_Portfolio(
      json['title'] as String,
      json['subtitle'] as String,
      json['description'] as String,
      (json['pictures'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_PortfolioToJson(_$_Portfolio instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'description': instance.description,
      'pictures': instance.pictures,
    };

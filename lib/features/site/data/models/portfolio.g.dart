// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Portfolio _$$_PortfolioFromJson(Map<String, dynamic> json) => _$_Portfolio(
      json['title'] as String,
      json['subtitle'] as String,
      json['description'] as String,
      (json['portions'] as List<dynamic>)
          .map((e) => PortfolioPortion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PortfolioToJson(_$_Portfolio instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'description': instance.description,
      'portions': instance.portions,
    };

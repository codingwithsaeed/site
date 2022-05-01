// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_portion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PortfolioPortion _$$_PortfolioPortionFromJson(Map<String, dynamic> json) =>
    _$_PortfolioPortion(
      json['title'] as String,
      json['description'] as String,
      (json['pictures'] as List<dynamic>).map((e) => e as String).toList(),
      json['link'] as String,
      json['source'] as String,
      json['locale'] as String,
    );

Map<String, dynamic> _$$_PortfolioPortionToJson(_$_PortfolioPortion instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'pictures': instance.pictures,
      'link': instance.link,
      'source': instance.source,
      'locale': instance.locale,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'portfolio_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PortfolioWrapper _$$_PortfolioWrapperFromJson(Map<String, dynamic> json) =>
    _$_PortfolioWrapper(
      (json['android'] as List<dynamic>)
          .map((e) => Portfolio.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['flutter'] as List<dynamic>)
          .map((e) => Portfolio.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PortfolioWrapperToJson(_$_PortfolioWrapper instance) =>
    <String, dynamic>{
      'android': instance.android,
      'flutter': instance.flutter,
    };

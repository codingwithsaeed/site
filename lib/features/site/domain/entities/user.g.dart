// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      Person.fromJson(json['person'] as Map<String, dynamic>),
      Resume.fromJson(json['resume'] as Map<String, dynamic>),
      PortfolioWrapper.fromJson(json['portfolio'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'person': instance.person,
      'resume': instance.resume,
      'portfolio': instance.portfolio,
    };

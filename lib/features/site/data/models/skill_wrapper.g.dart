// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SkillWrapper _$$_SkillWrapperFromJson(Map<String, dynamic> json) =>
    _$_SkillWrapper(
      (json['languages'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['tech'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['prog'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SkillWrapperToJson(_$_SkillWrapper instance) =>
    <String, dynamic>{
      'languages': instance.languages,
      'tech': instance.tech,
      'prog': instance.prog,
    };

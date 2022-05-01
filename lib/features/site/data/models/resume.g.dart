// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Resume _$$_ResumeFromJson(Map<String, dynamic> json) => _$_Resume(
      Profile.fromJson(json['profile'] as Map<String, dynamic>),
      ContactInfo.fromJson(json['contact'] as Map<String, dynamic>),
      PersonalInfo.fromJson(json['personal'] as Map<String, dynamic>),
      WorkInfo.fromJson(json['work'] as Map<String, dynamic>),
      SkillWrapper.fromJson(json['skills'] as Map<String, dynamic>),
      (json['socialNetworks'] as List<dynamic>)
          .map((e) => SocialNetwork.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['education'] as List<dynamic>)
          .map((e) => Education.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['companies'] as List<dynamic>)
          .map((e) => Company.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['projects'] as List<dynamic>)
          .map((e) => Project.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResumeToJson(_$_Resume instance) => <String, dynamic>{
      'profile': instance.profile,
      'contact': instance.contact,
      'personal': instance.personal,
      'work': instance.work,
      'skills': instance.skills,
      'socialNetworks': instance.socialNetworks,
      'education': instance.education,
      'companies': instance.companies,
      'projects': instance.projects,
    };

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'resume.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Resume _$ResumeFromJson(Map<String, dynamic> json) {
  return _Resume.fromJson(json);
}

/// @nodoc
class _$ResumeTearOff {
  const _$ResumeTearOff();

  _Resume call(
      Profile profile,
      ContactInfo contact,
      PersonalInfo personal,
      WorkInfo work,
      SkillWrapper skills,
      List<SocialNetwork> socialNetworks,
      List<Education> education,
      List<Company> companies,
      List<Project> projects) {
    return _Resume(
      profile,
      contact,
      personal,
      work,
      skills,
      socialNetworks,
      education,
      companies,
      projects,
    );
  }

  Resume fromJson(Map<String, Object?> json) {
    return Resume.fromJson(json);
  }
}

/// @nodoc
const $Resume = _$ResumeTearOff();

/// @nodoc
mixin _$Resume {
  Profile get profile => throw _privateConstructorUsedError;
  ContactInfo get contact => throw _privateConstructorUsedError;
  PersonalInfo get personal => throw _privateConstructorUsedError;
  WorkInfo get work => throw _privateConstructorUsedError;
  SkillWrapper get skills => throw _privateConstructorUsedError;
  List<SocialNetwork> get socialNetworks => throw _privateConstructorUsedError;
  List<Education> get education => throw _privateConstructorUsedError;
  List<Company> get companies => throw _privateConstructorUsedError;
  List<Project> get projects => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResumeCopyWith<Resume> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeCopyWith<$Res> {
  factory $ResumeCopyWith(Resume value, $Res Function(Resume) then) =
      _$ResumeCopyWithImpl<$Res>;
  $Res call(
      {Profile profile,
      ContactInfo contact,
      PersonalInfo personal,
      WorkInfo work,
      SkillWrapper skills,
      List<SocialNetwork> socialNetworks,
      List<Education> education,
      List<Company> companies,
      List<Project> projects});

  $ProfileCopyWith<$Res> get profile;
  $ContactInfoCopyWith<$Res> get contact;
  $PersonalInfoCopyWith<$Res> get personal;
  $WorkInfoCopyWith<$Res> get work;
  $SkillWrapperCopyWith<$Res> get skills;
}

/// @nodoc
class _$ResumeCopyWithImpl<$Res> implements $ResumeCopyWith<$Res> {
  _$ResumeCopyWithImpl(this._value, this._then);

  final Resume _value;
  // ignore: unused_field
  final $Res Function(Resume) _then;

  @override
  $Res call({
    Object? profile = freezed,
    Object? contact = freezed,
    Object? personal = freezed,
    Object? work = freezed,
    Object? skills = freezed,
    Object? socialNetworks = freezed,
    Object? education = freezed,
    Object? companies = freezed,
    Object? projects = freezed,
  }) {
    return _then(_value.copyWith(
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as ContactInfo,
      personal: personal == freezed
          ? _value.personal
          : personal // ignore: cast_nullable_to_non_nullable
              as PersonalInfo,
      work: work == freezed
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as WorkInfo,
      skills: skills == freezed
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as SkillWrapper,
      socialNetworks: socialNetworks == freezed
          ? _value.socialNetworks
          : socialNetworks // ignore: cast_nullable_to_non_nullable
              as List<SocialNetwork>,
      education: education == freezed
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as List<Education>,
      companies: companies == freezed
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>,
      projects: projects == freezed
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
    ));
  }

  @override
  $ProfileCopyWith<$Res> get profile {
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }

  @override
  $ContactInfoCopyWith<$Res> get contact {
    return $ContactInfoCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }

  @override
  $PersonalInfoCopyWith<$Res> get personal {
    return $PersonalInfoCopyWith<$Res>(_value.personal, (value) {
      return _then(_value.copyWith(personal: value));
    });
  }

  @override
  $WorkInfoCopyWith<$Res> get work {
    return $WorkInfoCopyWith<$Res>(_value.work, (value) {
      return _then(_value.copyWith(work: value));
    });
  }

  @override
  $SkillWrapperCopyWith<$Res> get skills {
    return $SkillWrapperCopyWith<$Res>(_value.skills, (value) {
      return _then(_value.copyWith(skills: value));
    });
  }
}

/// @nodoc
abstract class _$ResumeCopyWith<$Res> implements $ResumeCopyWith<$Res> {
  factory _$ResumeCopyWith(_Resume value, $Res Function(_Resume) then) =
      __$ResumeCopyWithImpl<$Res>;
  @override
  $Res call(
      {Profile profile,
      ContactInfo contact,
      PersonalInfo personal,
      WorkInfo work,
      SkillWrapper skills,
      List<SocialNetwork> socialNetworks,
      List<Education> education,
      List<Company> companies,
      List<Project> projects});

  @override
  $ProfileCopyWith<$Res> get profile;
  @override
  $ContactInfoCopyWith<$Res> get contact;
  @override
  $PersonalInfoCopyWith<$Res> get personal;
  @override
  $WorkInfoCopyWith<$Res> get work;
  @override
  $SkillWrapperCopyWith<$Res> get skills;
}

/// @nodoc
class __$ResumeCopyWithImpl<$Res> extends _$ResumeCopyWithImpl<$Res>
    implements _$ResumeCopyWith<$Res> {
  __$ResumeCopyWithImpl(_Resume _value, $Res Function(_Resume) _then)
      : super(_value, (v) => _then(v as _Resume));

  @override
  _Resume get _value => super._value as _Resume;

  @override
  $Res call({
    Object? profile = freezed,
    Object? contact = freezed,
    Object? personal = freezed,
    Object? work = freezed,
    Object? skills = freezed,
    Object? socialNetworks = freezed,
    Object? education = freezed,
    Object? companies = freezed,
    Object? projects = freezed,
  }) {
    return _then(_Resume(
      profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as ContactInfo,
      personal == freezed
          ? _value.personal
          : personal // ignore: cast_nullable_to_non_nullable
              as PersonalInfo,
      work == freezed
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as WorkInfo,
      skills == freezed
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as SkillWrapper,
      socialNetworks == freezed
          ? _value.socialNetworks
          : socialNetworks // ignore: cast_nullable_to_non_nullable
              as List<SocialNetwork>,
      education == freezed
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as List<Education>,
      companies == freezed
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>,
      projects == freezed
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Resume implements _Resume {
  const _$_Resume(
      this.profile,
      this.contact,
      this.personal,
      this.work,
      this.skills,
      this.socialNetworks,
      this.education,
      this.companies,
      this.projects);

  factory _$_Resume.fromJson(Map<String, dynamic> json) =>
      _$$_ResumeFromJson(json);

  @override
  final Profile profile;
  @override
  final ContactInfo contact;
  @override
  final PersonalInfo personal;
  @override
  final WorkInfo work;
  @override
  final SkillWrapper skills;
  @override
  final List<SocialNetwork> socialNetworks;
  @override
  final List<Education> education;
  @override
  final List<Company> companies;
  @override
  final List<Project> projects;

  @override
  String toString() {
    return 'Resume(profile: $profile, contact: $contact, personal: $personal, work: $work, skills: $skills, socialNetworks: $socialNetworks, education: $education, companies: $companies, projects: $projects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Resume &&
            const DeepCollectionEquality().equals(other.profile, profile) &&
            const DeepCollectionEquality().equals(other.contact, contact) &&
            const DeepCollectionEquality().equals(other.personal, personal) &&
            const DeepCollectionEquality().equals(other.work, work) &&
            const DeepCollectionEquality().equals(other.skills, skills) &&
            const DeepCollectionEquality()
                .equals(other.socialNetworks, socialNetworks) &&
            const DeepCollectionEquality().equals(other.education, education) &&
            const DeepCollectionEquality().equals(other.companies, companies) &&
            const DeepCollectionEquality().equals(other.projects, projects));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(profile),
      const DeepCollectionEquality().hash(contact),
      const DeepCollectionEquality().hash(personal),
      const DeepCollectionEquality().hash(work),
      const DeepCollectionEquality().hash(skills),
      const DeepCollectionEquality().hash(socialNetworks),
      const DeepCollectionEquality().hash(education),
      const DeepCollectionEquality().hash(companies),
      const DeepCollectionEquality().hash(projects));

  @JsonKey(ignore: true)
  @override
  _$ResumeCopyWith<_Resume> get copyWith =>
      __$ResumeCopyWithImpl<_Resume>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResumeToJson(this);
  }
}

abstract class _Resume implements Resume {
  const factory _Resume(
      Profile profile,
      ContactInfo contact,
      PersonalInfo personal,
      WorkInfo work,
      SkillWrapper skills,
      List<SocialNetwork> socialNetworks,
      List<Education> education,
      List<Company> companies,
      List<Project> projects) = _$_Resume;

  factory _Resume.fromJson(Map<String, dynamic> json) = _$_Resume.fromJson;

  @override
  Profile get profile;
  @override
  ContactInfo get contact;
  @override
  PersonalInfo get personal;
  @override
  WorkInfo get work;
  @override
  SkillWrapper get skills;
  @override
  List<SocialNetwork> get socialNetworks;
  @override
  List<Education> get education;
  @override
  List<Company> get companies;
  @override
  List<Project> get projects;
  @override
  @JsonKey(ignore: true)
  _$ResumeCopyWith<_Resume> get copyWith => throw _privateConstructorUsedError;
}

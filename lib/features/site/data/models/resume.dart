import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:site/features/site/data/models/company.dart';
import 'package:site/features/site/data/models/contact_info.dart';
import 'package:site/features/site/data/models/education.dart';
import 'package:site/features/site/data/models/personal_info.dart';
import 'package:site/features/site/data/models/profile.dart';
import 'package:site/features/site/data/models/project.dart';
import 'package:site/features/site/data/models/skill_wrapper.dart';
import 'package:site/features/site/data/models/social_network.dart';
import 'package:site/features/site/data/models/work_info.dart';

part 'resume.freezed.dart';
part 'resume.g.dart';

@freezed
class Resume with _$Resume {
  const factory Resume(
    Profile profile,
    ContactInfo contact,
    PersonalInfo personal,
    WorkInfo work,
    SkillWrapper skills,
    List<SocialNetwork> socialNetworks,
    List<Education> education,
    List<Company> companies,
    List<Project> projects,
  ) = _Resume;

  factory Resume.fromJson(Map<String, dynamic> json) => _$ResumeFromJson(json);
}

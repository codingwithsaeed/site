import 'package:codingwithsaeed/features/site/data/models/skill.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'skill_wrapper.freezed.dart';
part 'skill_wrapper.g.dart';

@freezed
class SkillWrapper with _$SkillWrapper {
  const factory SkillWrapper(
    List<Skill> languages,
    List<Skill> tech,
    List<Skill> prog,
  ) = _SkillWrapper;

  factory SkillWrapper.fromJson(Map<String, dynamic> json) =>
      _$SkillWrapperFromJson(json);
}

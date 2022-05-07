import 'package:codingwithsaeed/features/site/data/models/person.dart';
import 'package:codingwithsaeed/features/site/data/models/portfolio_wrapper.dart';
import 'package:codingwithsaeed/features/site/data/models/resume.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  const factory User(
    Person person,
    Resume resume,
    PortfolioWrapper portfolio,) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

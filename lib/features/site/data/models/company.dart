import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.freezed.dart';
part 'company.g.dart';

@freezed
class Company with _$Company {
  const factory Company(
    String title,
    String name,
    String website,
    String startMonth,
    String startYear,
    String endMonth,
    String endYear,
    String city,
  ) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);
}

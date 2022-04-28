



import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio.freezed.dart';
part 'portfolio.g.dart';

@freezed
class Portfolio with _$Portfolio {
  const factory Portfolio(
   String title,
    String subtitle,
    String description,
    List<String> pictures,
  ) = _Portfolio;

  factory Portfolio.fromJson(Map<String, dynamic> json) => _$PortfolioFromJson(json);
}
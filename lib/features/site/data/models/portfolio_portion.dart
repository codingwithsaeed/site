import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_portion.freezed.dart';
part 'portfolio_portion.g.dart';

@freezed
class PortfolioPortion with _$PortfolioPortion {
  const factory PortfolioPortion(
    String title,
    String description,
    List<String> pictures,
    String link,
    String source,
    String locale,
  ) = _PortfolioPortion;

  factory PortfolioPortion.fromJson(Map<String, dynamic> json) =>
      _$PortfolioPortionFromJson(json);
}

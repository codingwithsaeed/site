import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:site/features/site/data/models/portfolio.dart';

part 'portfolio_wrapper.freezed.dart';
part 'portfolio_wrapper.g.dart';

@freezed
class PortfolioWrapper with _$PortfolioWrapper {
  const factory PortfolioWrapper(
    List<Portfolio> android,
    List<Portfolio> flutter,
  ) = _PortfolioWrapper;

  factory PortfolioWrapper.fromJson(Map<String, dynamic> json) => _$PortfolioWrapperFromJson(json);
}
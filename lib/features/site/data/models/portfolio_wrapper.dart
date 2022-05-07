import 'package:codingwithsaeed/features/site/data/models/portfolio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_wrapper.freezed.dart';
part 'portfolio_wrapper.g.dart';

@freezed
class PortfolioWrapper with _$PortfolioWrapper {
  const factory PortfolioWrapper(
    List<Portfolio> android,
    List<Portfolio> flutter,
  ) = _PortfolioWrapper;

  factory PortfolioWrapper.fromJson(Map<String, dynamic> json) =>
      _$PortfolioWrapperFromJson(json);
}

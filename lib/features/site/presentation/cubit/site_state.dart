part of 'site_cubit.dart';

@freezed
class SiteState with _$SiteState {
  const factory SiteState.initial() = Initial;
  const factory SiteState.loading() = Loading;
  const factory SiteState.loaded(User user) = Loaded;
  const factory SiteState.error(String message) = Error;
}

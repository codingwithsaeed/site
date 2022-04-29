// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../core/network/api_provider.dart' as _i6;
import '../core/network/network_info.dart' as _i5;
import '../features/site/data/datasources/user_remote_source.dart' as _i7;
import '../features/site/data/repositories/user_repository_impl.dart' as _i9;
import '../features/site/domain/repositories/user_repository.dart' as _i8;
import '../features/site/domain/usecases/get_info_usecase.dart' as _i10;
import '../features/site/presentation/cubit/site_cubit.dart' as _i11;
import 'injectable_modules.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModules = _$InjectableModules();
  gh.factory<_i3.Client>(() => injectableModules.client);
  gh.factory<_i4.Connectivity>(() => injectableModules.connectivity);
  gh.factory<_i5.NetworkInfo>(
      () => _i5.NetworkInfoImpl(get<_i4.Connectivity>()));
  gh.lazySingleton<_i6.ApiProvider>(
      () => _i6.ApiProviderImpl(get<_i3.Client>()));
  gh.factory<_i7.UserRemoteSource>(
      () => _i7.UserRemoteSourceImpl(get<_i6.ApiProvider>()));
  gh.factory<_i8.UserRepository>(() => _i9.UserRepositoryImpl(
      get<_i7.UserRemoteSource>(), get<_i5.NetworkInfo>()));
  gh.factory<_i10.GetInfoUsecase>(
      () => _i10.GetInfoUsecase(get<_i8.UserRepository>()));
  gh.factory<_i11.SiteCubit>(() => _i11.SiteCubit(get<_i10.GetInfoUsecase>()));
  return get;
}

class _$InjectableModules extends _i12.InjectableModules {}

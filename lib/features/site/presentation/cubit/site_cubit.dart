import 'package:bloc/bloc.dart';
import 'package:codingwithsaeed/core/error/failure.dart';
import 'package:codingwithsaeed/core/network/api_param.dart';
import 'package:codingwithsaeed/features/site/domain/entities/user.dart';
import 'package:codingwithsaeed/features/site/domain/usecases/get_info_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'site_cubit.freezed.dart';
part 'site_state.dart';

@injectable
class SiteCubit extends Cubit<SiteState> {
  final GetInfoUsecase _getInfoUsecase;

  SiteCubit(this._getInfoUsecase) : super(const SiteState.initial());

  Future<void> getUserInfo(String locale) async {
    emit(const Loading());

    final result = await _getInfoUsecase(
      ApiParam(
        value: {
          'action': 'get_info',
          'id': '1',
          'locale': locale,
        },
      ),
    );

    result.fold(
      (failure) => emit(Error((failure as ServerFailure).message)),
      (user) => emit(Loaded(user)),
    );
  }
}

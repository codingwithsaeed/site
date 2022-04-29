import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:site/core/error/failure.dart';
import 'package:site/core/network/api_param.dart';
import 'package:site/features/site/domain/entities/user.dart';
import 'package:site/features/site/domain/repositories/user_repository.dart';

@injectable
class GetInfoUsecase {
  final UserRepository _repository;

  const GetInfoUsecase(this._repository);

  Future<Either<Failure, User>> call(ApiParam param) =>
      _repository.getUserInfo(param);
}

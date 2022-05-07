import 'package:codingwithsaeed/core/error/failure.dart';
import 'package:codingwithsaeed/core/network/api_param.dart';
import 'package:codingwithsaeed/features/site/domain/entities/user.dart';
import 'package:codingwithsaeed/features/site/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetInfoUsecase {
  final UserRepository _repository;

  const GetInfoUsecase(this._repository);

  Future<Either<Failure, User>> call(ApiParam param) =>
      _repository.getUserInfo(param);
}

import 'package:dartz/dartz.dart';
import 'package:site/core/error/failure.dart';
import 'package:site/features/site/domain/entities/user.dart';
import 'package:site/features/site/domain/repositories/user_repository.dart';

class GetInfoUsecase {
  final UserRepository _repository;

  const GetInfoUsecase(this._repository);

  Future<Either<Failure, User>> call(String id, String locale) =>
      _repository.getUserInfo(id, locale);
}

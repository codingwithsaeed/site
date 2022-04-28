import 'package:dartz/dartz.dart';
import 'package:site/core/error/failure.dart';
import 'package:site/core/network/api_param.dart';
import 'package:site/features/site/domain/entities/user.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> getUserInfo(ApiParam param);
}

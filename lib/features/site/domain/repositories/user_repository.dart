import 'package:codingwithsaeed/core/error/failure.dart';
import 'package:codingwithsaeed/core/network/api_param.dart';
import 'package:codingwithsaeed/features/site/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> getUserInfo(ApiParam param);
}

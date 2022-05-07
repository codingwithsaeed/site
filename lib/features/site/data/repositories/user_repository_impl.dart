// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:codingwithsaeed/core/error/exception.dart';
import 'package:codingwithsaeed/core/error/failure.dart';
import 'package:codingwithsaeed/core/network/api_param.dart';
import 'package:codingwithsaeed/core/network/network_info.dart';
import 'package:codingwithsaeed/features/site/data/datasources/user_remote_source.dart';
import 'package:codingwithsaeed/features/site/domain/entities/user.dart';
import 'package:codingwithsaeed/features/site/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserRemoteSource _userRemoteSource;
  final NetworkInfo _networkInfo;

  const UserRepositoryImpl(this._userRemoteSource, this._networkInfo);

  @override
  Future<Either<Failure, User>> getUserInfo(ApiParam param) async {
    if (!await _networkInfo.isConnected)
      return const Left(ServerFailure("No Internet Connection"));
    try {
      final result = await _userRemoteSource.getUserInfo(param.value);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on Exception catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}

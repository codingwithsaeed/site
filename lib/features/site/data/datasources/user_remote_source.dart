import 'dart:convert';

import 'package:site/core/network/api_provider.dart';
import 'package:site/features/site/domain/entities/user.dart';

abstract class UserRemoteSource {
  Future<User> getUserInfo(Map<String, dynamic> params);
}

class UserRemoteSourceImpl implements UserRemoteSource {
  final ApiProvider _provider;
  const UserRemoteSourceImpl(this._provider);

  @override
  Future<User> getUserInfo(Map<String, dynamic> params) async {
    final result = await _provider.post(currentDataUrl, params: params);
    return User.fromJson(jsonDecode(result.body));
  }
}

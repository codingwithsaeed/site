import 'dart:async';

import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:site/core/error/exception.dart';

// ignore: unused_element
const _localUrl = 'http://192.168.1.2/site/webservice.php';
// ignore: unused_element
const _onlineUrl = 'https://codingwithsaeed.ir/api/site/webservice.php';
final currentDataUrl = Uri.parse(_localUrl);

abstract class ApiProvider {
  ///Performs a POST request to given url
  ///throws a [ServerException] on all errors
  Future<Response> post(Uri url, {required Map<String, dynamic> params});
}

@LazySingleton(as: ApiProvider)
class ApiProviderImpl implements ApiProvider {
  final Client _client;

  ApiProviderImpl(this._client);

  @override
  Future<Response> post(Uri url, {required Map<String, dynamic> params}) async {
    try {
      final _response = await _client
          .post(url, body: params)
          .timeout(const Duration(seconds: 5));
      if (_response.statusCode == 200) return _response;
      throw ServerException(message: 'خطا در دریافت اطلاعات از سرور');
    } on TimeoutException {
      throw ServerException(message: 'دستگاه نمیتواند به سرور متصل شود');
    } on Exception {
      throw ServerException(message: 'خطا در دریافت اطلاعات از سرور');
    }
  }
}

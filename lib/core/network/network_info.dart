import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

@Injectable(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  final Connectivity _connectivity;

  NetworkInfoImpl(this._connectivity);
  @override
  Future<bool> get isConnected async {
    final result = await _connectivity.checkConnectivity();
    if (result == ConnectivityResult.none) return false;
    return true;
  }
}
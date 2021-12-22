import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectionRepository {
  final Connectivity _connectivity = Connectivity();
  Future<bool> isConnectedToInternet() async {
    ConnectivityResult connectivityResult =
        await _connectivity.checkConnectivity();

    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }
}

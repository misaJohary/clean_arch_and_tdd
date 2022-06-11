import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo{
  Future<bool> get isConnected;
}

class NetworkInfoImp extends NetworkInfo{
  @override
  Future<bool> get isConnected async => await InternetConnectionChecker().hasConnection;
}


import 'package:fl_discover_dashboard/core/data/network/network_service.dart';
import 'package:fl_discover_dashboard/core/data/network/network_service_impl.dart';
import 'package:fl_discover_dashboard/features/authentication/data/auth_remote_data_source.dart';
import 'package:fl_discover_dashboard/features/authentication/model/user_model.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setup() {
  sl.registerSingleton<User>(User());
  sl.registerFactory<NetworkService>(() => NetworkServiceImpl());
  // sl.registerSingleton<AutheRemoteDataSource>(
  //     AutheRemoteDataSource(NetworkService()));
  Get.lazyPut(
    () => AutheRemoteDataSource(sl.get<NetworkService>()),
  );
}

import 'package:fl_discover_dashboard/core/data/database/database_service.dart';
import 'package:fl_discover_dashboard/core/data/database/database_service_impl.dart';
import 'package:fl_discover_dashboard/core/data/network/network_service.dart';
import 'package:fl_discover_dashboard/core/data/network/network_service_impl.dart';
import 'package:fl_discover_dashboard/core/utilities/nav_service_utils.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:kiwi/kiwi.dart';

part 'core_injector.g.dart';

abstract class CoreInjector {
  static late KiwiContainer container;
  // ignore: always_specify_types
  static final resolve = container.resolve;

  void setup() {
    container = KiwiContainer();
    _$CoreInjector()._configure();
  }

  @Register.factory(DatabaseService, from: HiveDatabaseService)
  @Register.factory(NetworkService, from: NetworkServiceImpl)
  @Register.singleton(FlutterSecureStorage)
  // @Register.singleton(FirbaseMessagingUtils)
  @Register.singleton(NavigatorService)
  void _configure(); // ignore: unused_element
}

CoreInjector coreInjector() => _$CoreInjector();

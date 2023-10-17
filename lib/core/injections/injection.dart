import 'package:get_it/get_it.dart';
import 'core_injection.dart';
import 'external_injection.dart';

/// sl = Service Locator
final sl = GetIt.instance;

// * Initialization of GetIt service locator or dependency injection
class Injection {
  Injection._();

  static Future<void> init() async {
    await CoreInjection.init();

    await ExternalInjection.init();

    // *** Features injection ***
  }
}

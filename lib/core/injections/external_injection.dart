import 'package:firebase_auth/firebase_auth.dart';

import 'injection.dart';
import 'package:http/http.dart' as http;

/// * Instance from external package
class ExternalInjection {
  ExternalInjection._();

  static Future<void> init() async {
    // Http client for api interaction
    sl.registerLazySingleton(() => http.Client());

    // Firebase
    sl.registerLazySingleton(() => FirebaseAuth.instance);
  }
}

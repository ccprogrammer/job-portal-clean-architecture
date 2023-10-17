import 'dart:async';
import 'dart:developer';

import 'package:job_portal_clean_architecture/core/common/app/providers/app_provider.dart';
import 'package:job_portal_clean_architecture/core/common/app/providers/user_provider.dart';
import 'package:job_portal_clean_architecture/core/config/theme/app_theme.dart';
import 'package:job_portal_clean_architecture/core/extensions/provider_extension.dart';
import 'package:job_portal_clean_architecture/core/injections/injection.dart';
import 'package:job_portal_clean_architecture/core/router/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await Injection.init();

      runApp(const App());
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => AppProvider()..init(),
        ),
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: const _App(),
    );
  }
}

class _App extends StatelessWidget {
  const _App();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CCP Clean Architecture',
      theme: AppTheme.getThemeData(
        isLightTheme: context.appProviderWatch.isLightModeOn,
      ),
      onGenerateRoute: generateRoute,
    );
  }
}

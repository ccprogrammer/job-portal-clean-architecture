import 'package:job_portal_clean_architecture/core/config/theme/app_theme.dart';
import 'package:job_portal_clean_architecture/core/extensions/context_extension.dart';
import 'package:job_portal_clean_architecture/src/splashscreen/provider/splash_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const route = '/splash-screen';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      lazy: false,
      create: (context) => SplashProvider()..checkAuthState(context),
      child: const _SplashScreen(),
    );
  }
}

class _SplashScreen extends StatelessWidget {
  const _SplashScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AppTheme.changeTheme(context);
          },
          child: Text(
            'Splash Screen',
            style: context.theme.textMedium.copyWith(
              color: context.theme.primary,
            ),
          ),
        ),
      ),
    );
  }
}

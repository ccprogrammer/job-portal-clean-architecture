import 'package:job_portal_clean_architecture/core/cache/preferences/my_shared_preferences.dart';
import 'package:job_portal_clean_architecture/core/extensions/provider_extension.dart';
import 'package:job_portal_clean_architecture/core/injections/injection.dart';
import 'package:job_portal_clean_architecture/core/services/safe_convert.dart';
import 'package:job_portal_clean_architecture/src/auth/data/models/user_model.dart';
import 'package:job_portal_clean_architecture/src/auth/presentation/views/sign_in_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashProvider extends ChangeNotifier {
  void checkAuthState(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2));

    if (!context.mounted) return;

    if (MySharedPrefs.getIsFirstTimer()) {
      await Navigator.pushReplacementNamed(context, SignInPage.route);
    } else if (sl<FirebaseAuth>().currentUser != null) {
      final user = sl<FirebaseAuth>().currentUser!;

      final localUser = UserModel(
        uid: user.uid.asString,
        email: user.email.asString,
        points: 0,
        fullName: user.displayName.asString,
      );

      context.userProvider.initUser(localUser);

      Navigator.pushReplacementNamed(context, '/home');
    }
  }
}

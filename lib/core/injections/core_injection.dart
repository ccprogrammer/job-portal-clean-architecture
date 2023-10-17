import 'package:job_portal_clean_architecture/core/cache/hive/my_hive.dart';
import 'package:job_portal_clean_architecture/core/cache/preferences/my_shared_preferences.dart';
import 'package:job_portal_clean_architecture/core/utils/awesome_notifications_helper.dart';
import 'package:job_portal_clean_architecture/core/utils/firebase_injection.dart';

///  * Injecting Core instances like custom services class
class CoreInjection {
  CoreInjection._();

  static Future<void> init() async {
    // My Shared Preferences
    await MySharedPrefs.init();

    // Local database
    await MyHive.init();

    // init fcm services
    await FirebaseInjection.init();

    // initialize local notifications service
    await AwesomeNotificationsHelper.init();
  }
}

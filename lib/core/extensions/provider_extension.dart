import 'package:job_portal_clean_architecture/core/common/app/providers/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:job_portal_clean_architecture/core/common/app/providers/user_provider.dart';
import 'package:provider/provider.dart';

extension ProviderExt on BuildContext {
  UserProvider get userProvider => read<UserProvider>();

  /// listen: true, usually use for listening value changes and rebuild it
  AppProvider get appProviderWatch => watch<AppProvider>();

  /// listen: false, usually use for using provider method/function
  AppProvider get appProviderRead => read<AppProvider>();
}

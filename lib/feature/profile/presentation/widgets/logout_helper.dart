import 'package:cajoo/core/constants/shered_pref_keys.dart';
import 'package:cajoo/core/helpers/shered_pref_helper_.dart';
import 'package:cajoo/core/routing/routes.dart';
import 'package:flutter/material.dart';

class LogoutHelper {
  static Future<void> logout(BuildContext context) async {
    await SharedPrefHelper.clearAllSecuredData();
    await SharedPrefHelper.clearAllData();
    isLoggedInUser = false;

    Navigator.of(context).pushReplacementNamed(Routes.loginView);
  }
}

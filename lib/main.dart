import 'package:cajoo/cajoo_app.dart';
import 'package:cajoo/core/di/dependancy_ingection.dart';
import 'package:cajoo/core/helpers/extention.dart';
import 'package:cajoo/core/helpers/shered_pref_helper_.dart';
import 'package:cajoo/core/state%20management/cubit/app_lanuage_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/constants/shered_pref_keys.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await checkIfLoggedInUser();
  await setupGetIt();
  runApp(BlocProvider(
    create: (context) => AppLanuageCubit(),
    child: const CajooApp(),
  ));
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.authToken);
  if (userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}

import 'package:cajoo/core/routing/app_router.dart';
import 'package:cajoo/core/routing/routes.dart';
import 'package:flutter/material.dart';

class CajooApp extends StatelessWidget {
  const CajooApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: Routes.mainView,
      debugShowCheckedModeBanner: false,
    );
  }
}

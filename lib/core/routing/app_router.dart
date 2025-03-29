import 'package:cajoo/core/routing/routes.dart';
import 'package:cajoo/feature/auth/presentation/views/login_view.dart';
import 'package:cajoo/feature/onbording/presentation/views/onbording_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnbordingView());
      case Routes.loginView:
        return MaterialPageRoute(builder: (_) => const LoginView());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}

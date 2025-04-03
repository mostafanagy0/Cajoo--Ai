import 'package:cajoo/core/routing/routes.dart';
import 'package:cajoo/feature/home/presentation/views/home_view.dart';
import 'package:cajoo/feature/home/presentation/views/main_view.dart';
import 'package:cajoo/feature/login/presentation/views/login_view.dart';
import 'package:cajoo/feature/onbording/presentation/views/onbording_view.dart';
import 'package:cajoo/feature/profile/presentation/views/profile_view.dart';
import 'package:cajoo/feature/signup/presentation/views/signup_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnbordingView());
      case Routes.loginView:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.signUpView:
        return MaterialPageRoute(builder: (_) => const SignUpView());
      case Routes.homeview:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.profileview:
        return MaterialPageRoute(builder: (_) => const ProfileView());
      case Routes.mainView:
        return MaterialPageRoute(builder: (_) => const MainView());

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

import 'package:cajoo/core/di/dependancy_ingection.dart';
import 'package:cajoo/core/routing/routes.dart';
import 'package:cajoo/feature/forget_password/logic/forget_password_cubit/forgetpassword_cubit.dart';
import 'package:cajoo/feature/forget_password/logic/reset_password/cubit/reset_password_cubit.dart';
import 'package:cajoo/feature/forget_password/logic/verify_reset_code/cubit/verify_reset_code_cubit.dart';
import 'package:cajoo/feature/forget_password/presentation/views/enter_otp_view.dart';
import 'package:cajoo/feature/forget_password/presentation/views/forget_password_view.dart';
import 'package:cajoo/feature/forget_password/presentation/views/reset_password_view.dart';
import 'package:cajoo/feature/home/presentation/views/home_view.dart';
import 'package:cajoo/feature/home/presentation/views/main_view.dart';
import 'package:cajoo/feature/login/logic/cubit/login_cubit.dart';
import 'package:cajoo/feature/login/presentation/views/login_view.dart';
import 'package:cajoo/feature/onbording/presentation/views/onbording_view.dart';
import 'package:cajoo/feature/profile/presentation/views/help_and_support_view.dart';
import 'package:cajoo/feature/profile/presentation/views/profile_view.dart';
import 'package:cajoo/feature/signup/logic/cubit/signup_cubit.dart';
import 'package:cajoo/feature/signup/presentation/views/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnbordingView());
      case Routes.loginView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginView(),
                ));
      case Routes.signUpView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<SignupCubit>(),
                  child: const SignUpView(),
                ));
      case Routes.homeview:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.forgetPassword:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<ForgetpasswordCubit>(),
                  child: const ForgetPasswordView(),
                ));
      case Routes.profileview:
        return MaterialPageRoute(builder: (_) => const ProfileView());
      case Routes.helpandsupport:
        return MaterialPageRoute(builder: (_) => const HelpAndSupportView());
      case Routes.resetpassword:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<ResetPasswordCubit>(),
                  child: const ResetPasswordView(),
                ));
      case Routes.enterOtp:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<VerifyResetCodeCubit>(),
                  child: EnterOtpview(),
                ));
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

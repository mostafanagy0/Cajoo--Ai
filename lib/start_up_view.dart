import 'package:cajoo/core/constants/shered_pref_keys.dart';
import 'package:cajoo/core/helpers/shered_pref_helper_.dart';
import 'package:cajoo/core/routing/routes.dart';
import 'package:flutter/material.dart';

class StartUpView extends StatelessWidget {
  const StartUpView({super.key});

  Future<String> _getStartRoute() async {
    final token =
        await SharedPrefHelper.getSecuredString(SharedPrefKeys.authToken);
    if (token == null || token.isEmpty) {
      return Routes.onboarding;
    } else {
      return Routes.mainView;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _getStartRoute(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Scaffold(
              body: Center(child: CircularProgressIndicator()));
        }

        WidgetsBinding.instance.addPostFrameCallback((_) {
          Navigator.pushReplacementNamed(context, snapshot.data!);
        });

        return const SizedBox.shrink();
      },
    );
  }
}

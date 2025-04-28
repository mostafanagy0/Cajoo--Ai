import 'package:cajoo/feature/onbording/presentation/widgets/onbording_view_body.dart';
import 'package:flutter/material.dart';

class OnbordingView extends StatelessWidget {
  const OnbordingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: OnboardingViewBody(),
      ),
    );
  }
}

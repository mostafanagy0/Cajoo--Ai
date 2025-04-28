import 'package:cajoo/core/helpers/extention.dart';
import 'package:cajoo/core/routing/routes.dart';
import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/feature/onbording/data/onbording_entity.dart';
import 'package:cajoo/feature/onbording/presentation/widgets/custom_nav_bar.dart';
import 'package:cajoo/feature/onbording/presentation/widgets/smoth_page_indecator.dart';
import 'package:flutter/material.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  var currentPage = 0;
  late PageController controller;
  late List<OnbordingEntity> onboardingItems;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    onboardingItems = getOnbordingData(context);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      itemCount: onboardingItems.length,
      itemBuilder: (context, index) {
        final item = onboardingItems[index];

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 10),

              // Navigation bar
              CustomNavBar(
                onTap: () {
                  context.pushReplacementNamed(Routes.loginView);
                },
              ),
              const SizedBox(height: 60),

              Container(
                height: 334,
                width: 338,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(item.image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 68),

              Text(
                item.title,
                style: TextStyles.font24Weight700Bold,
              ),
              const SizedBox(height: 19),

              Text(
                item.description,
                style: TextStyles.font20Weight400,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 100),

              SmothPageIndicator(controller: controller),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }
}

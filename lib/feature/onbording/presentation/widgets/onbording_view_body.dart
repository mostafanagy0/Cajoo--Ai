import 'package:cajoo/core/helpers/extention.dart';
import 'package:cajoo/core/routing/routes.dart';
import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/feature/onbording/data/onbording_entity.dart';
import 'package:cajoo/feature/onbording/presentation/widgets/custom_nav_bar.dart';
import 'package:cajoo/feature/onbording/presentation/widgets/smoth_page_indecator.dart';
import 'package:flutter/material.dart';

class OnbordingViewBody extends StatefulWidget {
  const OnbordingViewBody({
    super.key,
  });

  @override
  State<OnbordingViewBody> createState() => _OnbordingViewBodyState();
}

class _OnbordingViewBodyState extends State<OnbordingViewBody> {
  late PageController controller;
  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
    controller.addListener(() {
      setState(() {});
    });
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
      itemCount: onbordingData.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 7.5,
              ),

              //Navigation bar
              CustomNavBar(
                onTap: () {

            context.pushReplacementNamed(Routes.loginView) ;
                },
              ),
              const SizedBox(
                height: 75,
              ),
              Container(
                height: 334,
                width: 338,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          onbordingData[index].image,
                        ),
                        fit: BoxFit.fill)),
              ),
              const SizedBox(
                height: 68,
              ),
              Text(onbordingData[index].title,
                  style: TextStyles.font24Weight700Bold),
              const SizedBox(
                height: 19,
              ),
              Text(
                onbordingData[index].description,
                style: TextStyles.font20Weight400,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 100,
              ),
              SmothPageIndicator(
                controller: controller,
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'package:cajoo/core/theming/colors.dart';
import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/core/utils/assets.dart';
import 'package:cajoo/core/widgets/custom_buttom.dart';
import 'package:cajoo/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EditeProfileView extends StatelessWidget {
  const EditeProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.primaryColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 29.5,
              ),
              Center(
                child: Text(
                  'Edit profile',
                  style: TextStyles.font34Weight500Semibold,
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Container(
                height: 700,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36),
                    ),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      Stack(children: [
                        Container(
                          width: 96,
                          height: 96,
                          decoration: const ShapeDecoration(
                            image: DecorationImage(
                                image: AssetImage(Assets.imagesOnbording1)),
                            shape: OvalBorder(
                              side: BorderSide(width: 2, color: Colors.white),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0xFFD4E0EB),
                                blurRadius: 8,
                                offset: Offset(0, 2),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 60,
                          child: FloatingActionButton(
                            backgroundColor: Colors.transparent,
                            onPressed: () {},
                            child: const Icon(
                              Icons.add,
                              color: AppColor.primaryColor,
                              size: 30,
                            ),
                          ),
                        ),
                      ]),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextFormFeild(
                          hintText: 'Edite name',
                          validator: (p0) {},
                          controller: TextEditingController()),
                      const SizedBox(
                        height: 16,
                      ),
                      CustomTextFormFeild(
                          hintText: 'Edite Email',
                          validator: (p0) {},
                          controller: TextEditingController()),
                      const SizedBox(
                        height: 16,
                      ),
                      CustomButtom(
                        onTap: () {
                          // validateThenDoLogin(context);
                        },
                        text: 'Login',
                      ),
                      const SizedBox(height: 12),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

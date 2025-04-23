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
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                const AssetImage(Assets.imagesOnbording1),
                            backgroundColor: Colors.grey[200],
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColor.primaryColor,
                                border:
                                    Border.all(color: Colors.white, width: 2),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
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

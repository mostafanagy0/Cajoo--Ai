import 'package:cajoo/core/state%20management/cubit/app_lanuage_cubit.dart';
import 'package:cajoo/core/theming/colors.dart';
import 'package:cajoo/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageOptionWidget extends StatefulWidget {
  const LanguageOptionWidget({
    super.key,
  });

  @override
  State<LanguageOptionWidget> createState() => _LanguageOptionWidgetState();
}

class _LanguageOptionWidgetState extends State<LanguageOptionWidget> {
  String selectedLanguage = 'en';
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedLanguage = 'en';
                });
                context
                    .read<AppLanuageCubit>()
                    .changeLanguage(const Locale('en'));
              },
              child: Container(
                height: 56,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft:
                          isArabic() ? Radius.zero : const Radius.circular(6),
                      bottomLeft:
                          isArabic() ? Radius.zero : const Radius.circular(6),
                      topRight:
                          isArabic() ? const Radius.circular(6) : Radius.zero,
                      bottomRight:
                          isArabic() ? const Radius.circular(6) : Radius.zero,
                    ),
                    color: selectedLanguage == 'en'
                        ? AppColor.primaryColor
                        : Colors.white),
                child: const Center(child: Text('English')),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedLanguage = 'ar';
                });
                context
                    .read<AppLanuageCubit>()
                    .changeLanguage(const Locale('ar'));
              },
              child: Container(
                height: 56,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft:
                          isArabic() ? const Radius.circular(6) : Radius.zero,
                      bottomLeft:
                          isArabic() ? const Radius.circular(6) : Radius.zero,
                      topRight:
                          isArabic() ? Radius.zero : const Radius.circular(6),
                      bottomRight:
                          isArabic() ? Radius.zero : const Radius.circular(6),
                    ),
                    color: selectedLanguage == 'ar'
                        ? AppColor.primaryColor
                        : Colors.white),
                child: const Center(child: Text('عربي')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

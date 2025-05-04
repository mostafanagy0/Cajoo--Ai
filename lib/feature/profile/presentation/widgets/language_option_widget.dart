import 'package:cajoo/core/constants/shered_pref_keys.dart';
import 'package:cajoo/core/helpers/shered_pref_helper_.dart';
import 'package:cajoo/core/state%20management/cubit/app_lanuage_cubit.dart';
import 'package:cajoo/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageOptionWidget extends StatefulWidget {
  const LanguageOptionWidget({super.key});

  @override
  State<LanguageOptionWidget> createState() => _LanguageOptionWidgetState();
}

class _LanguageOptionWidgetState extends State<LanguageOptionWidget> {
  String selectedLanguage = 'en';

  @override
  void initState() {
    super.initState();
    _loadSavedLanguage();
  }

  Future<void> _loadSavedLanguage() async {
    String savedLang =
        await SharedPrefHelper.getString(SharedPrefKeys.languageCode);
    if (savedLang.isEmpty) savedLang = 'en';
    setState(() {
      selectedLanguage = savedLang;
    });
  }

  void _onLanguageSelected(String langCode) async {
    setState(() {
      selectedLanguage = langCode;
    });
    await SharedPrefHelper.setData(SharedPrefKeys.languageCode, langCode);
    context.read<AppLanuageCubit>().changeLanguage(Locale(langCode));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          _buildLanguageButton('en', 'English'),
          _buildLanguageButton('ar', 'عربي'),
        ],
      ),  
    );
  }

  Widget _buildLanguageButton(String langCode, String label) {
    final isSelected = selectedLanguage == langCode;
    final isCurrentArabic = selectedLanguage == 'ar';

    return Expanded(
      child: GestureDetector(
        onTap: () => _onLanguageSelected(langCode),
        child: Container(
          height: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: _getTopLeftRadius(langCode, isCurrentArabic),
              bottomLeft: _getBottomLeftRadius(langCode, isCurrentArabic),
              topRight: _getTopRightRadius(langCode, isCurrentArabic),
              bottomRight: _getBottomRightRadius(langCode, isCurrentArabic),
            ),
            color: isSelected ? AppColor.primaryColor : Colors.white,
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Radius _getTopLeftRadius(String langCode, bool isArabic) {
    if ((langCode == 'en' && !isArabic) || (langCode == 'ar' && isArabic)) {
      return const Radius.circular(6);
    }
    return Radius.zero;
  }

  Radius _getBottomLeftRadius(String langCode, bool isArabic) {
    return _getTopLeftRadius(langCode, isArabic);
  }

  Radius _getTopRightRadius(String langCode, bool isArabic) {
    if ((langCode == 'ar' && !isArabic) || (langCode == 'en' && isArabic)) {
      return const Radius.circular(6);
    }
    return Radius.zero;
  }

  Radius _getBottomRightRadius(String langCode, bool isArabic) {
    return _getTopRightRadius(langCode, isArabic);
  }
}

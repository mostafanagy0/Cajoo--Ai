import 'package:cajoo/main.dart';

class TranslationHelper {
  static const Map<String, String> _translations = {
    'insect': "الآفات الحشرية",
    'disease': "البياض الدقيقي",
    'abiotic': "الاضطرابات البيئية والتغذوية",
  };

  static String translate(String key) {
    if (isArabic()) {
      return _translations[key] ?? key;
    }
    return key;
  }
}

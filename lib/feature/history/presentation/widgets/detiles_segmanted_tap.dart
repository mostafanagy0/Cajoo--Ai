import 'dart:convert';

import 'package:cajoo/core/theming/colors.dart';
import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/feature/history/data/models/history_model.dart';
import 'package:cajoo/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class DetailsSegmentedTabs extends StatefulWidget {
  final HistoryItem historyItem;

  const DetailsSegmentedTabs({super.key, required this.historyItem});

  @override
  State<DetailsSegmentedTabs> createState() => _DetailsSegmentedTabsState();
}

class _DetailsSegmentedTabsState extends State<DetailsSegmentedTabs> {
  int selectedIndex = 0;
  Map<String, dynamic>? treatmentsData;
  bool _isLoading = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_isLoading) {
      _isLoading = true;
      loadTreatmentsJson(context).then((data) {
        setState(() {
          treatmentsData = data;
          _isLoading = false;
        });
      });
    }
  }

  Future<Map<String, dynamic>> loadTreatmentsJson(BuildContext context) async {
    try {
      final locale = Localizations.localeOf(context);
      final languageCode = locale.languageCode;
      final jsonPath = languageCode.toLowerCase().startsWith('ar')
          ? 'assets/jsons/treatments_ar.json'
          : 'assets/jsons/treatments_en.json';

      bool fileExists = await DefaultAssetBundle.of(context)
          .loadString(jsonPath)
          .then((_) => true)
          .catchError((e) => false);

      if (!fileExists) {
        const String fallbackPath = 'assets/jsons/treatments_en.json';
        bool fallbackExists = await DefaultAssetBundle.of(context)
            .loadString(fallbackPath)
            .then((_) => true)
            .catchError((e) => false);
        if (!fallbackExists) {
          return {'error': 'Both JSON files do not exist'};
        }
        final String fallbackJsonString =
            await rootBundle.loadString(fallbackPath);
        if (fallbackJsonString.isEmpty) {
          return {'error': 'Fallback JSON file is empty'};
        }
        return jsonDecode(fallbackJsonString) as Map<String, dynamic>;
      }

      final String jsonString = await rootBundle.loadString(jsonPath);
      if (jsonString.isEmpty) {
        return {'error': 'JSON file is empty at $jsonPath'};
      }

      final data = jsonDecode(jsonString) as Map<String, dynamic>;
      if (data.isEmpty) {
        return {'error': 'Parsed JSON is empty at $jsonPath'};
      }
      return data;
    } catch (e) {
      return {'error': 'Error loading JSON: $e'};
    }
  }

  @override
  Widget build(BuildContext context) {
    final tabs = [S.of(context).Treatment, S.of(context).Diagnosis];
    return Column(
      children: [
        Row(
          children: List.generate(tabs.length, (index) {
            final isSelected = selectedIndex == index;
            return Expanded(
              child: GestureDetector(
                onTap: () => setState(() => selectedIndex = index),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  transform: isSelected
                      ? Matrix4.translationValues(6, -13, 6)
                      : Matrix4.identity(),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFDFDFD),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(16)),
                    boxShadow: isSelected
                        ? [
                            const BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6,
                                offset: Offset(-1, -4))
                          ]
                        : [],
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  child: Center(
                    child: AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 300),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: isSelected
                            ? AppColor.primaryColor
                            : const Color(0xFF9882B9),
                      ),
                      child: Text(tabs[index]),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
        Expanded(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: Container(
              key: ValueKey(selectedIndex),
              decoration: const BoxDecoration(color: Color(0xFFFDFDFD)),
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: widget.historyItem.detections.isNotEmpty
                  ? selectedIndex == 0
                      ? treatmentsData == null
                          ? const Center(child: CircularProgressIndicator())
                          : _buildTreatmentWidget(widget.historyItem.detections)
                      : _buildDiagnosisWidget(widget.historyItem.detections)
                  : Text(
                      S.of(context).nodetection,
                      style: TextStyles.font14Weight400.copyWith(
                        fontSize: 14,
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                    ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTreatmentWidget(List<Detection> detections) {
    final locale = Localizations.localeOf(context).languageCode;

    if (treatmentsData == null) {
      return Text(
        locale.contains('ar') ? 'جاري تحميل البيانات...' : 'Loading data...',
        style: TextStyles.font14Weight400.copyWith(
          fontSize: 14,
          color: AppColor.primaryColor,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
      );
    }

    if (treatmentsData!.containsKey('error')) {
      return Text(
        locale.contains('ar')
            ? 'خطأ: ${treatmentsData!['error']}'
            : 'Error: ${treatmentsData!['error']}',
        style: TextStyles.font14Weight400.copyWith(
          fontSize: 14,
          color: Colors.red,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
      );
    }

    if (treatmentsData!.isEmpty || detections.isEmpty) {
      return Text(
        locale.contains('ar') ? 'لا يوجد علاج متاح' : 'No treatment available',
        style: TextStyles.font14Weight400.copyWith(
          fontSize: 14,
          color: AppColor.primaryColor,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
      );
    }

    final primaryDetection =
        detections.reduce((a, b) => a.confidence > b.confidence ? a : b);
    final className = primaryDetection.className;

    final categories = treatmentsData!['categories'] as List<dynamic>?;
    if (categories == null || categories.isEmpty) {
      return Text(
        locale.contains('ar')
            ? 'لا توجد فئات متاحة'
            : 'No categories available',
        style: TextStyles.font14Weight400.copyWith(
          fontSize: 14,
          color: AppColor.primaryColor,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
      );
    }

    Map<String, dynamic>? targetCategory;

    if (locale.toLowerCase().startsWith('ar')) {
      if (className.toLowerCase().trim() == 'insect') {
        targetCategory = categories.firstWhere(
          (cat) => cat['name']?.toString().trim() == 'الآفات الحشرية',
          orElse: () => categories.firstWhere(
              (cat) => cat['name']?.toString().trim().toLowerCase() == 'insect',
              orElse: () => null),
        );
      } else if (className.toLowerCase().trim() == 'disease') {
        targetCategory = categories.firstWhere(
          (cat) => cat['name']?.toString().trim() == 'الأمراض',
          orElse: () => categories.firstWhere(
              (cat) =>
                  cat['name']?.toString().trim().toLowerCase() == 'disease',
              orElse: () => null),
        );
      } else if (className.toLowerCase().trim() == 'abiotic') {
        targetCategory = categories.firstWhere(
          (cat) =>
              cat['name']?.toString().trim() == 'الاضطرابات البيئية والتغذوية',
          orElse: () => categories.firstWhere(
              (cat) =>
                  cat['name']?.toString().trim().toLowerCase() ==
                  'abiotic (environmental & nutritional disorders)',
              orElse: () => null),
        );
      }
    } else {
      if (className.toLowerCase().trim() == 'insect') {
        targetCategory = categories.firstWhere(
          (cat) => cat['name']?.toString().trim().toLowerCase() == 'insect',
          orElse: () => null,
        );
      } else if (className.toLowerCase().trim() == 'disease') {
        targetCategory = categories.firstWhere(
          (cat) => cat['name']?.toString().trim().toLowerCase() == 'disease',
          orElse: () => null,
        );
      } else if (className.toLowerCase().trim() == 'abiotic') {
        targetCategory = categories.firstWhere(
          (cat) =>
              cat['name']?.toString().trim().toLowerCase() ==
              'abiotic (environmental & nutritional disorders)',
          orElse: () => null,
        );
      }
    }

    if (targetCategory == null) {
      return Text(
        locale.contains('ar')
            ? 'لا يوجد علاج متاح لـ $className'
            : 'No treatment available for $className',
        style: TextStyles.font14Weight400.copyWith(
          fontSize: 14,
          color: AppColor.primaryColor,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
      );
    }

    final diseases = (targetCategory['items'] ?? targetCategory['diseases'])
        as List<dynamic>?;
    if (diseases == null || diseases.isEmpty) {
      return Text(
        locale.contains('ar') ? 'لا يوجد علاج متاح' : 'No treatment available',
        style: TextStyles.font14Weight400.copyWith(
          fontSize: 14,
          color: AppColor.primaryColor,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
      );
    }

    final disease = diseases[0];
    final treatments =
        (disease['treatment'] as List<dynamic>?)?.join('\n') ?? '';
    if (treatments.isEmpty) {
      return Text(
        locale.contains('ar') ? 'لا يوجد علاج متاح' : 'No treatment available',
        style: TextStyles.font14Weight400.copyWith(
          fontSize: 14,
          color: AppColor.primaryColor,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
      );
    }

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            disease['name'] ?? 'غير معروف',
            style: TextStyles.font14Weight400.copyWith(
              fontSize: 16,
              color: AppColor.primaryColor,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.right,
          ),
          const SizedBox(height: 8),
          Text(
            locale.contains('ar') ? 'العلاجات:' : 'Treatments:',
            style: TextStyles.font14Weight400.copyWith(
              fontSize: 14,
              color: AppColor.primaryColor,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.right,
          ),
          Text(
            treatments,
            style: TextStyles.font14Weight400.copyWith(
              fontSize: 14,
              color: AppColor.primaryColor,
            ),
            textAlign: TextAlign.right,
          ),
        ],
      ),
    );
  }

  Widget _buildDiagnosisWidget(List<Detection> detections) {
    final locale = Localizations.localeOf(context).languageCode;

    if (treatmentsData == null) {
      return Text(
        locale.contains('ar') ? 'جاري تحميل البيانات...' : 'Loading data...',
        style: TextStyles.font14Weight400.copyWith(
          fontSize: 14,
          color: AppColor.primaryColor,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
      );
    }

    if (treatmentsData!.containsKey('error')) {
      return Text(
        locale.contains('ar')
            ? 'خطأ: ${treatmentsData!['error']}'
            : 'Error: ${treatmentsData!['error']}',
        style: TextStyles.font14Weight400.copyWith(
          fontSize: 14,
          color: Colors.red,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
      );
    }

    if (treatmentsData!.isEmpty || detections.isEmpty) {
      return Text(
        locale.contains('ar') ? 'لا يوجد تشخيص متاح' : 'No diagnosis available',
        style: TextStyles.font14Weight400.copyWith(
          fontSize: 14,
          color: AppColor.primaryColor,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
      );
    }

    final primaryDetection =
        detections.reduce((a, b) => a.confidence > b.confidence ? a : b);
    final className = primaryDetection.className;

    final categories = treatmentsData!['categories'] as List<dynamic>?;
    if (categories == null || categories.isEmpty) {
      return Text(
        locale.contains('ar')
            ? 'لا توجد فئات متاحة'
            : 'No categories available',
        style: TextStyles.font14Weight400.copyWith(
          fontSize: 14,
          color: AppColor.primaryColor,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
      );
    }

    Map<String, dynamic>? targetCategory;

    if (locale.toLowerCase().startsWith('ar')) {
      if (className.toLowerCase().trim() == 'insect') {
        targetCategory = categories.firstWhere(
          (cat) => cat['name']?.toString().trim() == 'الآفات الحشرية',
          orElse: () => categories.firstWhere(
              (cat) => cat['name']?.toString().trim().toLowerCase() == 'insect',
              orElse: () => null),
        );
      } else if (className.toLowerCase().trim() == 'disease') {
        targetCategory = categories.firstWhere(
          (cat) => cat['name']?.toString().trim() == 'الأمراض',
          orElse: () => categories.firstWhere(
              (cat) =>
                  cat['name']?.toString().trim().toLowerCase() == 'disease',
              orElse: () => null),
        );
      } else if (className.toLowerCase().trim() == 'abiotic') {
        targetCategory = categories.firstWhere(
          (cat) =>
              cat['name']?.toString().trim() == 'الاضطرابات البيئية والتغذوية',
          orElse: () => categories.firstWhere(
              (cat) =>
                  cat['name']?.toString().trim().toLowerCase() ==
                  'abiotic (environmental & nutritional disorders)',
              orElse: () => null),
        );
      }
    } else {
      if (className.toLowerCase().trim() == 'insect') {
        targetCategory = categories.firstWhere(
          (cat) => cat['name']?.toString().trim().toLowerCase() == 'insect',
          orElse: () => null,
        );
      } else if (className.toLowerCase().trim() == 'disease') {
        targetCategory = categories.firstWhere(
          (cat) => cat['name']?.toString().trim().toLowerCase() == 'disease',
          orElse: () => null,
        );
      } else if (className.toLowerCase().trim() == 'abiotic') {
        targetCategory = categories.firstWhere(
          (cat) =>
              cat['name']?.toString().trim().toLowerCase() ==
              'abiotic (environmental & nutritional disorders)',
          orElse: () => null,
        );
      }
    }

    if (targetCategory == null) {
      return Text(
        locale.contains('ar')
            ? 'لا يوجد تشخيص متاح لـ $className'
            : 'No diagnosis available for $className',
        style: TextStyles.font14Weight400.copyWith(
          fontSize: 14,
          color: AppColor.primaryColor,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
      );
    }

    final diseases = (targetCategory['items'] ?? targetCategory['diseases'])
        as List<dynamic>?;
    if (diseases == null || diseases.isEmpty) {
      return Text(
        locale.contains('ar') ? 'لا يوجد تشخيص متاح' : 'No diagnosis available',
        style: TextStyles.font14Weight400.copyWith(
          fontSize: 14,
          color: AppColor.primaryColor,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
      );
    }

    final disease = diseases[0];
    final symptoms = (disease['symptoms'] as List<dynamic>?)?.join('\n') ?? '';
    if (symptoms.isEmpty) {
      return Text(
        locale.contains('ar') ? 'لا توجد أعراض متاحة' : 'No symptoms available',
        style: TextStyles.font14Weight400.copyWith(
          fontSize: 14,
          color: AppColor.primaryColor,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
      );
    }

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            disease['name'] ?? 'غير معروف',
            style: TextStyles.font14Weight400.copyWith(
              fontSize: 16,
              color: AppColor.primaryColor,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.right,
          ),
          const SizedBox(height: 8),
          Text(
            locale.contains('ar') ? 'الأعراض:' : 'Symptoms:',
            style: TextStyles.font14Weight400.copyWith(
              fontSize: 14,
              color: AppColor.primaryColor,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.right,
          ),
          Text(
            symptoms,
            style: TextStyles.font14Weight400.copyWith(
              fontSize: 14,
              color: AppColor.primaryColor,
            ),
            textAlign: TextAlign.right,
          ),
        ],
      ),
    );
  }
}

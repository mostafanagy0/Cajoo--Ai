import 'package:cajoo/core/theming/colors.dart';
import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/feature/uplode_photo/logic/cubit/image_detection_cubit.dart';
import 'package:cajoo/feature/uplode_photo/logic/cubit/image_detection_state.dart';
import 'package:cajoo/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSegmentedTab extends StatefulWidget {
  const CustomSegmentedTab({super.key});

  @override
  State<CustomSegmentedTab> createState() => _CustomSegmentedTabState();
}

class _CustomSegmentedTabState extends State<CustomSegmentedTab> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [S.of(context).Treatment, S.of(context).Diagnosis];
    return BlocBuilder<ImageDetectionCubit, ImageDetectionState>(
      builder: (context, state) {
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
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(16)),
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
                  child: state is ImageDetectionSuccess
                      ? selectedIndex == 0
                          ? Text(
                              'Treatment will be added later',
                              style: TextStyles.font14Weight400.copyWith(
                                fontSize: 14,
                                color: AppColor.primaryColor,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          : Text(
                              state.response.data.detection.detections
                                      .isNotEmpty
                                  ? state.response.data.detection.detections
                                      .map((d) =>
                                          '${d.className} (${(d.confidence * 100).toStringAsFixed(2)}%)')
                                      .join('\n')
                                  : 'No diagnosis available',
                              style: TextStyles.font14Weight400.copyWith(
                                fontSize: 14,
                                color: AppColor.primaryColor,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                      : Text(
                          'Please upload an image',
                          style: TextStyles.font14Weight400.copyWith(
                            fontSize: 14,
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

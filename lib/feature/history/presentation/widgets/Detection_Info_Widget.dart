import 'package:cajoo/core/helpers/translation_helper.dart';
import 'package:cajoo/core/theming/colors.dart';
import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/feature/history/data/models/history_model.dart';
import 'package:cajoo/generated/l10n.dart';
import 'package:flutter/material.dart';

class DetectionInfoWidget extends StatelessWidget {
  final HistoryItem historyItem;

  const DetectionInfoWidget({super.key, required this.historyItem});

  @override
  Widget build(BuildContext context) {
    final detection = historyItem.detections.isNotEmpty == true
        ? historyItem.detections[0]
        : null;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                detection != null
                    ? TranslationHelper.translate(detection.className)
                    : S.of(context).nodetection,
                style: TextStyles.font16Weight400.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColor.primaryColor,
                ),
              ),
              Text(
                '${S.of(context).AIAccuracy} ${detection != null ? (detection.confidence * 100).toStringAsFixed(2) : '0'}%',
                style: TextStyles.font14Weight400.copyWith(
                  fontSize: 12,
                  color: const Color(0xFF008000),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

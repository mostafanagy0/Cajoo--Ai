import 'package:cajoo/core/helpers/translation_helper.dart';
import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/feature/history/data/models/history_model.dart';
import 'package:cajoo/generated/l10n.dart';
import 'package:flutter/material.dart';

class HistoryItemWidget extends StatelessWidget {
  const HistoryItemWidget({
    super.key,
    required this.historyItem,
  });
  final HistoryItem historyItem;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: SizedBox(
            height: 82,
            width: 100,
            child: Image.network(
              historyItem.imageUrl,
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: SizedBox(
            width: 190,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  TranslationHelper.translate(
                      historyItem.detections.first.className),
                  style: TextStyles.font16Weight400,
                ),
                Text(
                  S.of(context).more,
                  style: TextStyles.font14Weight400.copyWith(fontSize: 12),
                )
              ],
            ),
          ),
        ),
        const Spacer(),
        Text(
          formatDate(historyItem.createdAt),
          style: const TextStyle(
              color: Color(0xFF6C757D),
              fontSize: 12,
              fontWeight: FontWeight.w400),
        )
      ],
    );
  }

  String formatDate(String date) {
    try {
      final parsedDate = DateTime.parse(date);
      return '${parsedDate.day}/${parsedDate.month}/${parsedDate.year}';
    } catch (e) {
      return date;
    }
  }
}

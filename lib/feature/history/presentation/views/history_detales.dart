import 'package:cajoo/core/helpers/extention.dart';
import 'package:cajoo/core/widgets/build_app_bar.dart';
import 'package:cajoo/feature/history/data/models/history_model.dart';
import 'package:cajoo/feature/history/presentation/widgets/detiles_segmanted_tap.dart';
import 'package:cajoo/feature/history/presentation/widgets/view_history_image.dart';
import 'package:flutter/material.dart';

class HistoryDetailsView extends StatelessWidget {
  final HistoryItem historyItem;

  const HistoryDetailsView({
    super.key,
    required this.historyItem,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(onBack: context.pop),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ViewHistoryImage(
            historyItem: historyItem,
          ),
          const SizedBox(height: 60),
          Expanded(
            child: DetailsSegmentedTabs(
              historyItem: historyItem,
            ),
          )
        ],
      ),
    );
  }
}

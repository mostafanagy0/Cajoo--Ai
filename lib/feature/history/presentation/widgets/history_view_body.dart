import 'package:cajoo/feature/history/presentation/widgets/history_head_widget.dart';
import 'package:cajoo/feature/history/presentation/widgets/history_list_view_Builder.dart';
import 'package:flutter/material.dart';

class HistoryviewBody extends StatelessWidget {
  const HistoryviewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: HistoryHeadWidget(),
        ),
        SizedBox(
          height: 16,
        ),
        // Wrapping the HistoryListViewBuilder with Expanded
        Expanded(
          child: HistoryListViewBuilder(),
        )
      ],
    );
  }
}

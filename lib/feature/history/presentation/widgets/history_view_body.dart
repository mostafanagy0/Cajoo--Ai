import 'package:cajoo/feature/history/presentation/widgets/history_head_widget.dart';
import 'package:cajoo/feature/history/presentation/widgets/history_list_view_builder.dart';
import 'package:flutter/material.dart';

class HistoryViewBody extends StatelessWidget {
  const HistoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 16),
        // Header section for history view
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: HistoryHeadWidget(),
        ),
        SizedBox(height: 16),
        // List of history items
        Expanded(
          child: HistoryListViewBuilder(),
        ),
      ],
    );
  }
}

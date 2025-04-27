import 'package:cajoo/core/widgets/build_app_bar.dart';
import 'package:cajoo/feature/history/presentation/widgets/history_item.dart';
import 'package:flutter/material.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const HistoryItem();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

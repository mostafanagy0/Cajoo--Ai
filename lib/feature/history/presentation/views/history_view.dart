import 'package:cajoo/core/helpers/extention.dart';
import 'package:cajoo/core/widgets/build_app_bar.dart';
import 'package:cajoo/feature/history/presentation/widgets/history_view_body.dart';
import 'package:cajoo/main.dart';
import 'package:flutter/material.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(onBack: context.pop),
      body: Padding(
        padding: EdgeInsets.only(
            right: isArabic() ? 10 : 24, left: isArabic() ? 24 : 10),
        child: const HistoryViewBody(),
      ),
    );
  }
}

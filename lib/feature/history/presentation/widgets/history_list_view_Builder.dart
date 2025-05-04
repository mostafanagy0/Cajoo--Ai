import 'package:cajoo/core/helpers/extention.dart';
import 'package:cajoo/core/routing/routes.dart';
import 'package:cajoo/feature/history/logic/cubit/get_history_cubit.dart';
import 'package:cajoo/feature/history/logic/cubit/get_history_state.dart';
import 'package:cajoo/feature/history/presentation/widgets/history_item_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryListViewBuilder extends StatefulWidget {
  const HistoryListViewBuilder({super.key});

  @override
  State<HistoryListViewBuilder> createState() => _HistoryListViewBuilderState();
}

class _HistoryListViewBuilderState extends State<HistoryListViewBuilder> {
  @override
  void initState() {
    super.initState();
    context.read<GetHistoryCubit>().getHistory();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetHistoryCubit, GetHistoryState>(
      builder: (context, state) {
        if (state is GetHistoryLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is GetHistoryFailure) {
          return Center(child: Text(state.message));
        } else if (state is GetHistorySuccess) {
          if (state.history.isEmpty) {
            return const Center(child: Text('no history found'));
          }

          return ListView.builder(
            itemCount: state.history.length,
            itemBuilder: (context, index) {
              final historyItem = state.history[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: GestureDetector(
                  onTap: () {
                    if (kDebugMode) {
                      print(
                          'Navigating to historyDetails with item: ${historyItem.imageUrl}');
                    }
                    context.pushNamed(
                      Routes.historyDetales,
                      arguments: historyItem,
                    );
                  },
                  child: HistoryItemWidget(
                    historyItem: historyItem,
                  ),
                ),
              );
            },
          );
        } else {
          return const Center(child: Text('Loding...'));
        }
      },
    );
  }
}

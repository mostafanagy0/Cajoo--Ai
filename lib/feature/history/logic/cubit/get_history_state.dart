import 'package:cajoo/feature/history/data/models/history_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_history_state.freezed.dart';

@freezed
class GetHistoryState with _$GetHistoryState {
  const factory GetHistoryState.initial() = GetHistoryInitial;
  const factory GetHistoryState.loading() = GetHistoryLoading;
  const factory GetHistoryState.success(List<HistoryItem> history) =
      GetHistorySuccess;
  const factory GetHistoryState.failure(String message) = GetHistoryFailure;
}

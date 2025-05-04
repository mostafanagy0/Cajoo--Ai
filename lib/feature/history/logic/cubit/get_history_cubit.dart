import 'package:bloc/bloc.dart';
import 'package:cajoo/feature/history/data/repos/history_repo_impl.dart';
import 'package:cajoo/feature/history/logic/cubit/get_history_state.dart';

class GetHistoryCubit extends Cubit<GetHistoryState> {
  GetHistoryCubit(this.historyRepoImpl)
      : super(const GetHistoryState.initial());
  final HistoryRepoImpl historyRepoImpl;

  Future<void> getHistory() async {
    emit(const GetHistoryState.loading());
    final result = await historyRepoImpl.getHistory();
    result.fold(
      (failure) => emit(GetHistoryState.failure(failure.message)),
      (history) => emit(GetHistoryState.success(history.data)),
    );
  }
}

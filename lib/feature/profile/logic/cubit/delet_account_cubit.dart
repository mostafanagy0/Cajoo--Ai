import 'package:bloc/bloc.dart';
import 'package:cajoo/feature/profile/data/repos/profile_repo_impl.dart';
import 'package:cajoo/feature/profile/logic/cubit/delete_account_state.dart';

class DeleteAccountCubit extends Cubit<DeleteAccountState> {
  final ProfileRepoImpl profileRepoImpl;

  DeleteAccountCubit(this.profileRepoImpl)
      : super(const DeleteAccountState.initial());

  Future<void> deleteAccount() async {
    emit(const DeleteAccountState.loading());

    final result = await profileRepoImpl.deleteMyAccount();

    result.fold(
      (failure) => emit(DeleteAccountState.error(error: failure)),
      (success) => emit(const DeleteAccountState.success()),
    );
  }
}

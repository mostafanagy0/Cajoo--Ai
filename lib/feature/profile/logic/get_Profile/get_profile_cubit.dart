import 'package:bloc/bloc.dart';
import 'package:cajoo/feature/profile/data/repos/profile_repo_impl.dart';
import 'package:cajoo/feature/profile/logic/get_profile/get_profile_state.dart';

class GetProfileCubit extends Cubit<GetProfileState> {
  GetProfileCubit(this.profileRepoImpl)
      : super(const GetProfileState.initial());

  final ProfileRepoImpl profileRepoImpl;

  Future<void> getProfile() async {
    emit(const GetProfileState.loading());

    final result = await profileRepoImpl.getProfile();

    result.fold(
      (failure) {
        print('Error in Cubit: ${failure.message}');
        emit(GetProfileState.error(error: failure));
      },
      (profileData) {
        print('Profile Data in Cubit: $profileData');
        emit(GetProfileState.success(profileData));
      },
    );
  }
}

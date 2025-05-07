import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cajoo/feature/profile/data/models/update_profile/update_profile_request.dart';
import 'package:cajoo/feature/profile/data/repos/profile_repo_impl.dart';
import 'package:cajoo/feature/profile/logic/cubit/update_profile_state.dart';

class UpdateProfileCubit extends Cubit<UpdateProfileState> {
  final ProfileRepoImpl profileRepoImpl;

  UpdateProfileCubit({required this.profileRepoImpl})
      : super(const UpdateProfileState.initial());

  Future<void> updateProfile(String username, File imageFile) async {
    emit(const UpdateProfileState.loading());
    try {
      final request = UpdateProfileRequest(
        username: username,
        profileImage: imageFile,
      );
      final result = await profileRepoImpl.updateProfile(request);
      result.fold(
        (failure) {
          emit(UpdateProfileState.updateFailure(failure.message));
        },
        (response) {
          emit(UpdateProfileState.updateSuccess(response));
        },
      );
    } catch (e) {
      emit(UpdateProfileState.updateFailure("خطأ أثناء تحميل الصورة: $e"));
    }
  }
}

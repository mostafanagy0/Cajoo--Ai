import 'package:cajoo/feature/profile/data/models/update_profile/update_profile_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile_state.freezed.dart';

@freezed
class UpdateProfileState with _$UpdateProfileState {
  const factory UpdateProfileState.initial() = _UpdateProfileInitial;
  const factory UpdateProfileState.loading() = _UpdateProfileLoading;
  const factory UpdateProfileState.updateSuccess(
      UpdateProfileResponse response) = _UpdateProfileSuccess;
  const factory UpdateProfileState.updateFailure(String message) =
      _UpdateProfileFailure;
}

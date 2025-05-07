import 'dart:io';

class UpdateProfileRequest {
  final String username;
  final File profileImage;

  UpdateProfileRequest({
    required this.username,
    required this.profileImage,
  });
}

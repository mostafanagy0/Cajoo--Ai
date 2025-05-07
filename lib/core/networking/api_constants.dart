class ApiConstants {
  static const String baseUrl = 'https://cashwa-nodejs-server.fly.dev/api/vi/';
  static const String login = 'auth/login';
  static const String signup = 'auth/register';
  static const String forgetPassword = 'auth/forgetPassword';
  static const String logout = 'user/deleteMyAccount';
  static const String verifyResetCode = 'auth/verifyResetCode';
  static const String resetPassword = 'auth/resetPassword';
  static const String getProfile = 'user/getData/getMe';
  static const String updateProfile = '${baseUrl}user/updateUserData';
  static const String imagedetection = '${baseUrl}process-image';
  static const String getHistory = 'history';
}

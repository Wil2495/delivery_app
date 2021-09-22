import 'package:delivery_app/app/domain/models/user_model.dart';

class LoginResponse {
  final SignUpError? error;
  final User? user;

  LoginResponse(this.error, this.user);
}

parseStringToLoginError(String text) {
  switch (text) {
    case "too-many-requests":
      return SignUpError.tooManyRequests;
    case "email-already-in-use":
      return SignUpError.emailAlreadyInUse;
    case "weak-password":
      return SignUpError.weakPassword;
    case "network-request-failed":
      return SignUpError.networkRequestFailed;
    default:
      return SignUpError.unknown;
  }
}

enum SignUpError {
  tooManyRequests,
  emailAlreadyInUse,
  weakPassword,
  unknown,
  networkRequestFailed
}

import 'package:flutter/widgets.dart' show ChangeNotifier, FormState, GlobalKey;

class LoginController extends ChangeNotifier {
  // ignore: unused_field
  String _email = '', _password = "";

  final GlobalKey<FormState> formkey = GlobalKey();

  void onEmailChange(String text) {
    _email = text;
  }

  void onPasswordChange(String text) {
    _password = text;
  }

  /*  Future<LoginResponse> submit() async {
    final response = await _authenticationRepository.signInWithEmailAndPassword(
        _email, _password);
    if (response.error == null) {
      _sessionController.setUser(response.user!);
    }
    return response;
  } */
}

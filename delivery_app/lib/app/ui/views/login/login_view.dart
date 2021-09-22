import 'package:delivery_app/app/ui/global_widgets/custom_input_field.dart';
import 'package:delivery_app/app/ui/global_widgets/dialogs/progress_dialog.dart';
import 'package:delivery_app/app/ui/routes/routes.dart';
import 'package:delivery_app/app/utils/email_validator.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            color: Colors.transparent,
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Form(
              //   key: controller.formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomInputField(
                    label: "Email",
                    //  onChanged: controller.onEmailChange,
                    inputype: TextInputType.emailAddress,
                    validator: (text) {
                      if (isValidEmail(text!)) {
                        return null;
                      }
                      return "Invalid email";
                    },
                  ),
                  const SizedBox(height: 20.0),
                  CustomInputField(
                    label: "Password",
                    isPassword: true,
                    //  onChanged: controller.onPasswordChange,
                    validator: (text) {
                      if (text!.trim().length >= 6) {
                        return null;
                      }
                      return "invalid password";
                    },
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {}
                          /*     Navigator.pushNamed(Routes.resetPassword),*/,
                          child: const Text("Forgot Password?")),
                      const SizedBox(width: 10.0),
                      ElevatedButton(
                        onPressed: () => ProgressDialog.show(context),
                        child: const Text("Sign up"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () async => {
                      ProgressDialog.show(context),
                      await Future.delayed(const Duration(seconds: 1)),
                      Navigator.pop(context),
                      Navigator.pushReplacementNamed(context, Routes.home)
                    },
                    child: const Text("Login"),
                  ),
                  const SizedBox(height: 30.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

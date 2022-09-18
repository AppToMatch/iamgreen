import 'package:flutter/material.dart';
import 'package:i_am_green/constant/custom_button/custom_button.dart';
import 'package:i_am_green/constant/custom_text_field/custom_text_field.dart';
import 'package:i_am_green/constant/global_variables.dart';
import 'package:i_am_green/screens/Authentication_Screen/forgot_password/reset_password_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static const String routName = '/forgotpassword_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
              left: 20,
              right: 20,
              top: GlobalVariables.screenHeight(context) * 0.12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Forgot your password?',
                style: GlobalVariables.header1.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 250,
                child: Text(
                  'Enter the email address you used to register. We will send you a secure pin to reset your password.',
                  style: GlobalVariables.header1.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const CustomTextField(
                fieldlabel: 'Email',
              ),
              const SizedBox(height: 20),
              CustomButton(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(ResetPasswordScreen.routName);
                },
                buttonlabel: 'Send Email',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:i_am_green/constant/custom_button/custom_button.dart';
import 'package:i_am_green/constant/global_variables.dart';
import 'package:i_am_green/screens/Authentication_Screen/login_screen/login_screen.dart';

class CompleteSignUpScreen extends StatelessWidget {
  const CompleteSignUpScreen({Key? key}) : super(key: key);
  static const String routName = '/complete_signUp_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'You\'re signed up!\n Please log in.',
              style: GlobalVariables.paragraph1.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 50),
          CustomButton(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(LoginScreen.routName);
            },
            buttonwidth: 150,
            buttonlabel: 'Back to login',
          ),
        ],
      ),
    );
  }
}

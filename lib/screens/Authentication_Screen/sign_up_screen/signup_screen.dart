import 'package:flutter/material.dart';
import 'package:i_am_green/constant/custom_button/custom_button.dart';
import 'package:i_am_green/constant/custom_button/custom_text_button.dart';
import 'package:i_am_green/constant/custom_text_field/custom_text_field.dart';
import 'package:i_am_green/screens/Authentication_Screen/login_screen/login_screen.dart';
import 'package:i_am_green/screens/Authentication_Screen/sign_up_screen/complete_sign_up_screen.dart';

import '../../../constant/global_variables.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static const String routName = '/signup_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
              left: 20,
              right: 20,
              top: GlobalVariables.screenHeight(context) * 0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'asset/image_asset/i_am_green.png',
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Sign Up',
                style: GlobalVariables.header1.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Enter your email address',
                style: GlobalVariables.header1.copyWith(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                fieldlabel: 'Email',
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                fieldlabel: 'Password',
                obscuretext: true,
              ),
              const SizedBox(height: 10),
              Text(
                'By joining I agree to receive emails from I Am Green.',
                style: GlobalVariables.paragraph1.copyWith(
                  color: GlobalVariables.defaultGrey,
                ),
              ),
              const SizedBox(height: 20),
              CustomButton(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(CompleteSignUpScreen.routName);
                },
                buttonlabel: 'Next',
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  'Already a member?',
                  style: GlobalVariables.paragraph1.copyWith(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Center(
                child: CustomTextButton(
                  buttonlabel: 'Sign In',
                  buttonlabelStyle:
                      GlobalVariables.textButtonTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(LoginScreen.routName);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:i_am_green/constant/custom_button/custom_button.dart';
import 'package:i_am_green/constant/custom_button/custom_text_button.dart';
import 'package:i_am_green/constant/custom_text_field/custom_text_field.dart';
import 'package:i_am_green/constant/global_variables.dart';
import 'package:i_am_green/screens/Authentication_Screen/forgot_password/forgot_password_screen.dart';
import 'package:i_am_green/screens/Home_screen/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String routName = '/login_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
              left: 20,
              right: 20,
              top: GlobalVariables.screenHeight(context) * 0.15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Image.asset(
                  'asset/image_asset/i_am_green.png',
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
              const SizedBox(height: 20),
              CustomButton(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(HomeScreen.routName);
                },
                buttonlabel: 'Next',
              ),
              const SizedBox(height: 10),
              CustomTextButton(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(ForgotPasswordScreen.routName);
                },
                buttonlabel: 'Forgot your password?',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

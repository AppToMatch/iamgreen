import 'package:flutter/material.dart';
import 'package:i_am_green/constant/custom_button/custom_button.dart';
import 'package:i_am_green/constant/custom_text_field/custom_text_field.dart';
import 'package:i_am_green/constant/global_variables.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);
  static const String routName = '/resetpassword_screen';
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
                'Change your password',
                style: GlobalVariables.header1.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: Text(
                  'verification code was sent to your email. if you didn\'t receive the recovery email, please check your spam folder. once you receive the recovery email, please enter the verification code and the new password ',
                  style: GlobalVariables.header1.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const CustomTextField(
                fieldlabel: 'Verification code',
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                fieldlabel: 'New Password',
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                fieldlabel: 'Repeat New Password',
              ),
              const SizedBox(height: 20),
              CustomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                buttonlabel: 'Confirm',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

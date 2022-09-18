import 'package:flutter/material.dart';
import 'package:i_am_green/constant/custom_button/custom_button.dart';
import 'package:i_am_green/constant/global_variables.dart';
import 'package:i_am_green/screens/Authentication_Screen/login_screen/login_screen.dart';
import 'package:i_am_green/screens/Authentication_Screen/sign_up_screen/signup_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);
  static const String routName = '/onboarding_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 176,
            child: Image.asset('asset/image_asset/i_am_green.png'),
          ),
          SizedBox(
            height: GlobalVariables.screenHeight(context) * 0.02,
          ),
          SizedBox(
            width: 220,
            child: Text(
              'Reconnect Our \nPeople Back to the\n Planet and Each Other',
              style: GlobalVariables.header1,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: GlobalVariables.screenHeight(context) * 0.030,
          ),
          CustomButton(
            onTap: () {
              Navigator.of(context).pushNamed(SignUpScreen.routName);
            },
            buttonwidth: 180,
            buttonlabel: 'Sign Up',
          ),
          SizedBox(
            height: GlobalVariables.screenHeight(context) * 0.025,
          ),
          CustomButton(
            onTap: () {
              Navigator.of(context).pushNamed(LoginScreen.routName);
            },
            buttonwidth: 180,
            buttonlabel: 'Log In',
            isoutlinestyle: true,
          ),
          const SizedBox(width: double.infinity)
        ],
      ),
    );
  }
}

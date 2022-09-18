import 'package:flutter/material.dart';
import 'package:i_am_green/screens/Authentication_Screen/sign_up_screen/complete_sign_up_screen.dart';
import 'package:i_am_green/screens/Home_screen/home_screen.dart';
import 'package:i_am_green/screens/Onboarding_screen/onboarding_screen.dart';
import 'screens/Authentication_Screen/forgot_password/forgot_password_screen.dart';
import 'screens/Authentication_Screen/forgot_password/reset_password_screen.dart';
import 'screens/Authentication_Screen/login_screen/login_screen.dart';
import 'screens/Authentication_Screen/sign_up_screen/signup_screen.dart';
import 'screens/Navigation/navigationscreen.dart';

Route<RouteSettings> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case OnboardingScreen.routName:
      return MaterialPageRoute(
        builder: (_) => const OnboardingScreen(),
      );
    case SignUpScreen.routName:
      return MaterialPageRoute(
        builder: (_) => const SignUpScreen(),
      );
    case LoginScreen.routName:
      return MaterialPageRoute(
        builder: (_) => const LoginScreen(),
      );
    case ForgotPasswordScreen.routName:
      return MaterialPageRoute(
        builder: (_) => const ForgotPasswordScreen(),
      );
    case ResetPasswordScreen.routName:
      return MaterialPageRoute(
        builder: (_) => const ResetPasswordScreen(),
      );
    case CompleteSignUpScreen.routName:
      return MaterialPageRoute(
        builder: (_) => const CompleteSignUpScreen(),
      );
    case NavigationScreen.routName:
      return MaterialPageRoute(
        builder: (_) => const NavigationScreen(),
      );
    case HomeScreen.routName:
      return MaterialPageRoute(
        builder: (_) => const HomeScreen(),
      );
    default:
      return MaterialPageRoute(builder: (_) => const OnboardingScreen());
  }
}
    // case CongratulationScreen.routName:
    //   return MaterialPageRoute(
    //     builder: (_) => const CongratulationScreen(),
    //   );
    // case NavigationScreen.routName:
    //   return MaterialPageRoute(
    //     builder: (_) => const NavigationScreen(),
    //   );
    // case SplashScreen.routName:
    //   return MaterialPageRoute(
    //     builder: (_) => const SplashScreen(),
    //   );
    // case OnBoardingScreen.routName:
    //   return MaterialPageRoute(
    //     builder: (_) => const OnBoardingScreen(),
    //   );
    // case SignUpScreen.routName:
    //   return MaterialPageRoute(
    //     builder: (_) => const SignUpScreen(),
    //   );
    // case LoginScreen.routName:
    //   return MaterialPageRoute(
    //     builder: (_) => const LoginScreen(),
    //   );
    // case ForgotPasswordScreen.routName:
    //   return MaterialPageRoute(
    //     builder: (_) => const ForgotPasswordScreen(),
    //   );
    // case VerifyOtpScreen.routName:
    //   return MaterialPageRoute(
    //     builder: (_) => const VerifyOtpScreen(),
    //   );
    // case DropperOffer.routname:
    //   return MaterialPageRoute(
    //     builder: (_) => const DropperOffer(),
    //   );
    // case DropperResponse.routname:
    //   return MaterialPageRoute(
    //     builder: (_) => const DropperResponse(),
    //   );
    // case ResetPasswordScreen.routName:
    //   return MaterialPageRoute(
    //     builder: (_) => const ResetPasswordScreen(),
    //   );
    // case ChatPage.routname:
    //   return MaterialPageRoute(
    //     builder: (_) => const ChatPage(),
    //   );
    // case OrderDetailsPage.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => const OrderDetailsPage(),
    //   );
    // case AirtimeTopUp.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => const AirtimeTopUp(),
    //   );
    // case TransactionHistory.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => const TransactionHistory(),
    //   );
    // case Earnings.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => const Earnings(),
    //   );
    // case FundWallet.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => const FundWallet(),
    //   );
    // case Verification.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => const Verification(),
    //   );
    // case Settings.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => const Settings(),
    //   );
    // case IdentityCardUploading.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => const IdentityCardUploading(),
    //   );
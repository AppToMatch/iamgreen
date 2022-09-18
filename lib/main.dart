import 'package:flutter/material.dart';
import 'package:i_am_green/constant/global_variables.dart';
import 'package:i_am_green/route.dart';
import 'package:i_am_green/screens/Onboarding_screen/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (notification) {
        notification.disallowIndicator();
        return true;
      },
      child: MaterialApp(
        title: GlobalVariables.companyName,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: GlobalVariables.scaffoldBackgroundColor,
          colorScheme: const ColorScheme.light(
            primary: GlobalVariables.primarycolor,
          ),
          appBarTheme: const AppBarTheme(
            elevation: 0,
          ),
        ),
        home: const OnboardingScreen(),
        onGenerateRoute: (settings) => generateRoute(settings),
      ),
    );
  }
}

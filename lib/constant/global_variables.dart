import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlobalVariables {
  static const String companyName = "I AM Green";
  static const scaffoldBackgroundColor = Color(0xffDDFFD9);
  static const primarycolor = Color(0xff306B34);
  static const defaultLightGreen = Color(0xff4C934C);
  static const defaultBlack = Color(0xff000000);
  static const defaultWhite = Color(0xffffffff);
  static const defaultGrey = Color(0xff828282);
  static const redcolor = Color(0xffdd5353);
  static TextStyle header1 = GoogleFonts.mavenPro(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: primarycolor,
  );

  static TextStyle header2 = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
    fontFamily: 'Roboto',
    color: defaultBlack,
  );

  static TextStyle paragraph1 = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    color: defaultBlack,
  );
  static TextStyle paragraph2 = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: redcolor,
  );
  static TextStyle textButtonTextStyle = GoogleFonts.mavenPro(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: primarycolor,
  );
  static TextStyle buttonTextStyle = GoogleFonts.firaSans(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: defaultWhite,
  );
  static TextStyle textFieldTextStyle = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: defaultBlack,
  );
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}

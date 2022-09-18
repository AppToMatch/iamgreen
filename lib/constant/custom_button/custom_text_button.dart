import 'package:flutter/material.dart';
import 'package:i_am_green/constant/global_variables.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    required this.buttonlabel,
    required this.onTap,
    this.buttonlabelStyle,
    Key? key,
  }) : super(key: key);
  final Function() onTap;
  final String buttonlabel;
  final TextStyle? buttonlabelStyle;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        buttonlabel,
        style: buttonlabelStyle ?? GlobalVariables.textButtonTextStyle,
      ),
    );
  }
}

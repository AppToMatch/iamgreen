import 'package:flutter/material.dart';
import 'package:i_am_green/constant/global_variables.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.fieldlabel,
    this.obscuretext = false,
    Key? key,
  }) : super(key: key);
  final bool obscuretext;
  final String fieldlabel;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscuretext,
      decoration: InputDecoration(
        fillColor: GlobalVariables.defaultWhite,
        filled: true,
        hintText: fieldlabel,
        hintStyle: GlobalVariables.textFieldTextStyle,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:i_am_green/constant/global_variables.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.onTap,
    this.buttonwidget,
    this.curveradius,
    this.isoutlinestyle = false,
    this.buttonwidth,
    Key? key,
    this.buttonlabel,
  }) : super(key: key);
  final Function() onTap;
  final String? buttonlabel;
  final Widget? buttonwidget;
  final double? curveradius;
  final double? buttonwidth;
  final bool isoutlinestyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: buttonwidget ??
          Text(
            buttonlabel ?? '',
            style: GlobalVariables.buttonTextStyle.copyWith(
              color:
                  isoutlinestyle ? GlobalVariables.primarycolor : Colors.white,
            ),
          ),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: isoutlinestyle
            ? GlobalVariables.scaffoldBackgroundColor
            : GlobalVariables.primarycolor,
        padding: EdgeInsets.zero,
        side: BorderSide(
          color: isoutlinestyle
              ? GlobalVariables.primarycolor
              : GlobalVariables.scaffoldBackgroundColor,
          width: isoutlinestyle ? 2 : 0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(curveradius ?? 5),
        ),
        minimumSize: Size(
          buttonwidth ?? double.infinity,
          50,
        ),
      ),
    );
  }
}

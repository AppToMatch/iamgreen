import 'package:flutter/material.dart';
import 'package:i_am_green/constant/global_variables.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    this.iconWidget,
    required this.onTap,
    this.icon,
    Key? key,
  }) : super(key: key);

  final Widget? iconWidget;
  final Function() onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: iconWidget ??
          Icon(
            icon,
            color: GlobalVariables.primarycolor,
            size: 25,
          ),
    );
  }
}

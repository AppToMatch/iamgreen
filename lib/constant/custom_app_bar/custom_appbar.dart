import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:i_am_green/constant/custom_button/custom_icon_button.dart';
import 'package:i_am_green/constant/global_variables.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  const CustomAppBar(
      {Key? key,
      required this.title,
      this.bottom,
      this.leadingicon,
      this.trailingicon})
      : preferredSize = const Size(20, 70),
        super(key: key);
  final String title;
  final PreferredSizeWidget? bottom;
  final IconData? leadingicon;
  final IconData? trailingicon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: GlobalVariables.scaffoldBackgroundColor,
      bottom: bottom,
      automaticallyImplyLeading: false,
      title: Text(title),
      leading: CustomIconButton(
        onTap: () {},
        icon: Icons.menu,
      ),
      actions: [
        CustomIconButton(
          onTap: () {},
          icon: FontAwesomeIcons.penToSquare,
        ),
      ],
    );
  }
}

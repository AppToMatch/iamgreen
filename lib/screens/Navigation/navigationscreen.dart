import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_am_green/constant/global_variables.dart';
import 'package:i_am_green/screens/Navigation/donate_screen.dart';
import 'package:i_am_green/screens/Navigation/feed_screen.dart';
import 'package:i_am_green/screens/Navigation/map_screen.dart';
import 'package:i_am_green/screens/Navigation/merch_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);
  static const String routName = '/navigation_screen';

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

int currentindex = 2;

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentindex,
        children: const [
          MapSceen(),
          FeedScreen(),
          MerchScreen(),
          DonateSceen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        selectedItemColor: GlobalVariables.primarycolor,
        unselectedItemColor: GlobalVariables.defaultLightGreen,
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            currentindex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'asset/svg_image/Vector.svg',
              height: 25,
              color: currentindex == 0
                  ? GlobalVariables.primarycolor
                  : GlobalVariables.defaultLightGreen,
            ),
            label: 'Map',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 35,
            ),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'asset/svg_image/merch.svg',
              height: 25,
              color: currentindex == 2
                  ? GlobalVariables.primarycolor
                  : GlobalVariables.defaultLightGreen,
            ),
            label: 'Merch',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'asset/svg_image/donate.svg',
              height: 25,
              color: currentindex == 3
                  ? GlobalVariables.primarycolor
                  : GlobalVariables.defaultLightGreen,
            ),
            label: 'Donate',
          ),
        ],
      ),
    );
  }
}

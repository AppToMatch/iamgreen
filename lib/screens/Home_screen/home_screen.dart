import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:i_am_green/constant/custom_app_bar/custom_appbar.dart';
import 'package:i_am_green/constant/custom_button/custom_button.dart';
import 'package:i_am_green/constant/global_variables.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routName = '/home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(
              title: '',
            ),
            const SizedBox(height: 20),
            Image.asset('asset/image_asset/i_am_green.png'),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  size: 25,
                  color: GlobalVariables.redcolor,
                ),
                Text(
                  'current location',
                  style: GlobalVariables.paragraph2,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              '23434',
              style: GlobalVariables.paragraph2.copyWith(
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '75°',
              style: GlobalVariables.paragraph1.copyWith(
                fontSize: 48,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'current temperature ',
              style: GlobalVariables.paragraph1.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  InfoCard(
                    infoheading: 'heat index',
                    infovalue: '81°',
                    infoicon: 'asset/svg_image/ic-weather-temperature.svg',
                  ),
                  InfoCard(
                    infoheading: 'closest EV charging',
                    infovalue: '1.4 mi',
                    infoicon: 'asset/svg_image/distance.svg',
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  InfoCard(
                    infoheading: 'traffic',
                    infovalue: 'Heavy',
                    infoicon: 'asset/svg_image/car.svg',
                  ),
                  InfoCard(
                    infoheading: 'tree coverage',
                    infovalue: 'Fair',
                    infoicon: 'asset/svg_image/tree.svg',
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  InfoCard(
                    infoheading: 'air quality',
                    infovalue: 'Fair',
                    infoicon: 'asset/svg_image/sun-cloud.svg',
                  ),
                  InfoCard(
                    infoheading: 'pedestrian friendly',
                    infovalue: 'Yes',
                    infoicon: 'asset/svg_image/person.svg',
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  InfoCard(
                    infoheading: 'lighting',
                    infovalue: 'Poor',
                    infoicon: 'asset/svg_image/eye.svg',
                  ),
                  InfoCard(
                    infoheading: 'nearest greenspace',
                    infovalue: '0.7 mi',
                    infoicon: 'asset/svg_image/ic-places-mountains.svg',
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  InfoCard(
                    infoheading: 'nearest whole food',
                    infovalue: '2.0 mi',
                    infoicon: 'asset/svg_image/restaurant.svg',
                  ),
                  InfoCard(
                    infoheading: 'nearest hospital',
                    infovalue: '4.3 mi',
                    infoicon: 'asset/svg_image/ic medicine helicopter.svg',
                  ),
                ],
              ),
            ),
            Text(
              'Comming Soon!',
              style: GlobalVariables.paragraph1.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: GlobalVariables.screenWidth(context) * 0.7,
              child: CustomButton(
                onTap: () {},
                buttonlabel: 'EV Car Share',
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    required this.infoheading,
    required this.infoicon,
    required this.infovalue,
    Key? key,
  }) : super(key: key);

  final String infoheading;
  final String infovalue;
  final String infoicon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: GlobalVariables.screenWidth(context) * 0.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            infoheading,
            style: GlobalVariables.paragraph1.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 5),
          SvgPicture.asset(
            infoicon,
          ),
          const SizedBox(height: 10),
          Text(
            infovalue,
            style: GlobalVariables.paragraph1.copyWith(
              fontSize: 36,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Divider(
            color: GlobalVariables.defaultBlack,
            thickness: 1,
          )
        ],
      ),
    );
  }
}

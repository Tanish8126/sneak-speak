// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/constants/constants.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = './home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: false,
            leadingWidth: 0,
            title: Text(
              "TalentSkool",
              style: tsBW(26, FontWeight.bold),
            ),
            // actions: [
            //   IconButton(
            //     onPressed: () {},
            //     icon: SvgPicture.asset(
            //       "assets/icons/calendar.svg",
            //       color: kBlack,
            //       height: getProportionateScreenHeight(36),
            //     ),
            //   ),
            //   IconButton(
            //     onPressed: () {},
            //     icon: SvgPicture.asset(
            //       "assets/icons/addsquare.svg",
            //       color: kBlack,
            //       height: getProportionateScreenHeight(36),
            //     ),
            //   ),
            //   IconButton(
            //     onPressed: () {},
            //     icon: SvgPicture.asset(
            //       "assets/icons/notification.svg",
            //       color: kBlack,
            //       height: getProportionateScreenHeight(36),
            //     ),
            //   )
            // ],
          ),
          // floatingActionButton: FloatingActionButton(
          //   backgroundColor: kPrimary,
          //   onPressed: () {},
          //   child: SvgPicture.asset(
          //     "assets/icons/message.svg",
          //     color: kWhite,
          //     height: getProportionateScreenHeight(36),
          //   ),
          // ),
          body: const Body()),
    );
  }
}

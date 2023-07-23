// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/constants/constants.dart';
import '../events_screen/events_screen.dart';
import '../home_screen/home_screen.dart';
import '../network_screen/network_screen.dart';
import '../profile_screen/profile_screen.dart';

class MainScreen extends StatefulWidget {
  static String routeName = '/mainscreen';
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _page = 0;
  var userData = {};
  List<Widget> pages = const [
    HomeScreen(),
    NetworkScreen(),
    EventsScreen(),
    ProfileScreen()
  ];

  onPageChange(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kPrimary,
        unselectedItemColor: kInactive,
        backgroundColor: kBlack.withOpacity(0.7),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 5,
        unselectedFontSize: getProportionateScreenHeight(18),
        selectedFontSize: getProportionateScreenHeight(18),
        onTap: onPageChange,
        currentIndex: _page,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/home.svg",
                color: _page == 0 ? kWhite : kBlack.withOpacity(0.5),
                height: getProportionateScreenHeight(26),
              ),
              label: "Hello"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/people.svg",
                color: _page == 1 ? kWhite : kBlack.withOpacity(0.1),
                height: getProportionateScreenHeight(26),
              ),
              label: "Hello"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/message.svg",
                color: _page == 2 ? kWhite : kBlack.withOpacity(0.5),
                height: getProportionateScreenHeight(26),
              ),
              label: "Hello"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/profile.svg",
                color: _page == 3 ? kWhite : kBlack.withOpacity(0.5),
                height: getProportionateScreenHeight(26),
              ),
              label: "Hello"),
        ],
      ),
      body: pages[_page],
    );
  }
}

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
    ProfileScreen(),
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
        backgroundColor: kWhite,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0,
        unselectedFontSize: getProportionateScreenHeight(18),
        selectedFontSize: getProportionateScreenHeight(18),
        onTap: onPageChange,
        currentIndex: _page,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/home.svg",
              color: _page == 0 ? kPrimary : kBlack.withOpacity(0.5),
              height: getProportionateScreenHeight(26),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/share.svg",
              color: _page == 1 ? kPrimary : kBlack.withOpacity(0.5),
              height: getProportionateScreenHeight(26),
            ),
            label: 'Network',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/share.svg",
              color: _page == 2 ? kPrimary : kBlack.withOpacity(0.5),
              height: getProportionateScreenHeight(26),
            ),
            label: 'Talent',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/calendar.svg",
              color: _page == 3 ? kPrimary : kBlack.withOpacity(0.5),
              height: getProportionateScreenHeight(26),
            ),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/profile.svg",
              color: _page == 4 ? kPrimary : kBlack.withOpacity(0.5),
              height: getProportionateScreenHeight(26),
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: pages[_page],
    );
  }
}

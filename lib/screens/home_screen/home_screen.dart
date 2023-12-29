import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants/constants.dart';
import '../widget.home/alien_home/alien_home.dart';
import '../widget.home/native_home/native_part.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = './home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: const Color(0x00070707),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            bottom: TabBar(
                indicatorWeight: 2,
                indicatorColor: kWhite,
                indicatorSize: TabBarIndicatorSize.tab,
                unselectedLabelStyle:
                    tsCommonW(16, FontWeight.w700, const Color(0xFF272727)),
                labelStyle: tsWW(16, FontWeight.w700),
                tabs: const [
                  Tab(text: "Native"),
                  Tab(text: "Alien"),
                ]),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: ktrans,
            child: SvgPicture.asset(
              "assets/icons/floating.svg",
              height: 60.h,
            ),
          ),
          body: const TabBarView(children: [NativeHome(), AlienHome()])),
    );
  }
}

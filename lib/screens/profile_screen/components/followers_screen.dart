import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';
import '../followers/followers.dart';
import '../following/following.dart';

class FollowersScreen extends StatelessWidget {
  static String routeName = './followers_screen';
  const FollowersScreen({super.key});

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
                  Tab(text: "Followers"),
                  Tab(text: "Following"),
                ]),
          ),
          body: const TabBarView(
            children: [Followers(), Following()],
          ),
        ));
  }
}

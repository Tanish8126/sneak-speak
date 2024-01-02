import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../utils/constants/constants.dart';
import 'explore_subgroup/explore_subgroup.dart';
import 'joined_subgroup/joined_subgroup.dart';

class SubGroup extends StatelessWidget {
  static String routeName = './sub_group';
  const SubGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: kWhite,
                  size: 16,
                )),
            backgroundColor: const Color(0xff1D1D1D),
            automaticallyImplyLeading: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/nims.png"),
                sw02,
                Text(
                  "NIMS College",
                  style: tsWW(18, FontWeight.w600),
                ),
                sw02,
                SvgPicture.asset("assets/icons/verify.svg"),
              ],
            ),
            bottom: const TabBar(
                indicatorWeight: 2,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: kWhite,
                labelColor: kWhite,
                tabs: [
                  Tab(
                    text: "Joined",
                  ),
                  Tab(text: "Explore")
                ]),
          ),
          body: const TabBarView(
              children: [JoinedSubgroup(), ExploreSubgroup()])),
    );
  }
}

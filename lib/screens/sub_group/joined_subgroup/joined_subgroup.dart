import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/constants.dart';
import '../components/sub_groupbody.dart';

class JoinedSubgroup extends StatelessWidget {
  static String roteName = './native_network';
  const JoinedSubgroup({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SubgroupBody(),
          const SubgroupBody(),
          Divider(color: kWhite.withOpacity(0.4)),
          GestureDetector(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Host group",
                  style: tsCommonW(16, FontWeight.w500,
                      const Color.fromARGB(255, 100, 100, 100)),
                ),
                sw02,
                SvgPicture.asset("assets/icons/add-square.svg")
              ],
            ),
          )
        ],
      ),
    );
  }
}

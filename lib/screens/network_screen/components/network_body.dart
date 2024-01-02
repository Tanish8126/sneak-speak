import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sneak_speak/screens/group_info/group_info.dart';

import '../../../utils/constants/constants.dart';

class NetworkBody extends StatelessWidget {
  const NetworkBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(GroupInfo.routeName);
      },
      child: Padding(
        padding: pda(0.02),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: const AssetImage("assets/images/profile.png"),
              backgroundColor: Colors.grey[800],
              radius: 30.r,
            ),
            sw05,
            Text(
              "Firefighter",
              style: tsWW(16, FontWeight.bold),
            ),
            sw05,
            SvgPicture.asset("assets/icons/verify.svg"),
            const Spacer(),
            SvgPicture.asset("assets/icons/flash.svg")
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sneak_speak/screens/profile_screen/profile_screen.dart';

import '../../../../utils/constants/constants.dart';

class FollowingData extends StatelessWidget {
  const FollowingData({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(ProfileScreen.routeName);
      },
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: const AssetImage("assets/images/profile.png"),
            backgroundColor: Colors.grey[800],
            radius: 20.r,
          ),
          sw04,
          Text(
            "Guman",
            style: tsCommonW(16, FontWeight.w600, kBlue),
          )
        ],
      ),
    );
  }
}

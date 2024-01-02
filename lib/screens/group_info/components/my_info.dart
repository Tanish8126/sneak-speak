import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: const AssetImage("assets/images/profile.png"),
          backgroundColor: Colors.grey[800],
          radius: 25.r,
        ),
        sw04,
        Text(
          "Guman",
          style: tsCommonW(14, FontWeight.w600, const Color(0xffFF9898)),
        ),
        const Spacer(),
        Text(
          "Exit",
          style: tsCommonW(14, FontWeight.w600, const Color(0xffFF9898)),
        ),
        sw01,
        SvgPicture.asset("assets/icons/logout.svg")
      ],
    );
  }
}

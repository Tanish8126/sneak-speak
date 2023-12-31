// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/constants.dart';

class UserNamePlace extends StatelessWidget {
  const UserNamePlace({
    super.key,
    required this.userName,
    required this.place,
  });
  final String userName, place;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          userName,
          style: tsWW(15, FontWeight.w700),
        ),
        sw07,
        TextButton.icon(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/gps.svg",
              height: 16.h,
              color: const Color(0xFFD9FFBB),
            ),
            label: Text(
              place,
              style: tsCommonW(15, FontWeight.w700, const Color(0xFFD9FFBB)),
            )),
      ],
    );
  }
}

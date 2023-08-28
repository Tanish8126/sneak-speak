// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/constants/constants.dart';

class NativeBody extends StatelessWidget {
  const NativeBody({super.key, required this.tweet});
  final String tweet;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: pda(0.02),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CircleAvatar(
          backgroundImage: const AssetImage("assets/images/profile.png"),
          backgroundColor: Colors.grey[800],
          radius: 30.r,
        ),
        Row(
          children: [
            Text(
              "Firefighter",
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
                  "Nmims",
                  style:
                      tsCommonW(15, FontWeight.w700, const Color(0xFFD9FFBB)),
                )),
          ],
        ),
        Text(
          tweet,
          style: tsCommonW(15, FontWeight.w500, const Color(0xFF949494)),
          textAlign: TextAlign.left,
        ),
        sh04,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/flash.svg"),
                label: Text(
                  "1.4k",
                  style: tsWW(12, FontWeight.bold),
                )),
            TextButton.icon(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/message-2.svg"),
                label: Text(
                  "999",
                  style: tsWW(12, FontWeight.bold),
                )),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/send-2.svg")),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/bookmark-2.svg"))
          ],
        )
      ]),
    );
  }
}

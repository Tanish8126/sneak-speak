import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/constants/constants.dart';

class NativeBody extends StatelessWidget {
  const NativeBody({super.key});

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
              style: tsWW(16, FontWeight.bold),
            ),
            sw07,
            TextButton.icon(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/gps.svg"),
                label: Text(
                  "1.4k",
                  style: tsWW(12, FontWeight.bold),
                )),
          ],
        ),
        Text(
          "In the corridors of Ridgeview College, whispers spread like wildfire. From scandalous love affairs to clandestine alliances, the gossip mill churned ceaselessly. Friends turned foes, secrets unveiled, and reputations shattered. Amidst the chaos, the power of words held sway, forever altering the course of friendships and shaping the college's social landscape.",
          style: tsWW(14, FontWeight.bold),
          textAlign: TextAlign.left,
        ),
        sh04,
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
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

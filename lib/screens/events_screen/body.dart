import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: const AssetImage("assets/images/profile.png"),
              backgroundColor: Colors.grey[800],
              radius: 30.r,
            ),
            sw05,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pandu",
                  style: tsWW(16, FontWeight.w600),
                ),
                sh01,
                Text(
                  "Hey, guys! I have some mind-blowing\n gossip! Sarah from our literature\n class is secretly",
                  style:
                      tsCommonW(13, FontWeight.w500, const Color(0xFF828282)),
                  textAlign: TextAlign.left,
                )
              ],
            )
          ],
        )
      ],
    );
  }
}

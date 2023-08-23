import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/constants.dart';
import '../../widget.home/native_home/components/body.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(onPressed: () {}, child: Text("Edit")),
        sh01,
        Text(
          "Rahul Gupta",
          style: tsWW(22, FontWeight.w500),
        ),
        sh02,
        Text(
          "Anonymity grants me the power to delve into genuine conversations",
          style: tsW(16),
        ),
        sh02,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
        ),
        sh02,
        Row(
          children: const [Text("20 Followers"), Text("20 Followers")],
        ),
        Divider(color: kWhite.withOpacity(0.3)),
        const NativeBody()
      ],
    );
  }
}

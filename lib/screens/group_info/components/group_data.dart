import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';

class GroupData extends StatelessWidget {
  const GroupData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/Bcom.png"),
        Text(
          "Bcom 25'",
          style: tsWW(16, FontWeight.w700),
        ),
        sh02,
        Container(
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 188, 188, 188)),
          child: Text(
            "Hosted by - Deep",
            style: tsCommonW(12, FontWeight.w500, const Color(0xff616161)),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';
import 'aboutme.dart';
import 'skills.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: pda(0.02),
      decoration: const BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(onPressed: () {}, child: Text("Edit")),
          sh01,
          Text(
            "Rahul Gupta",
            style: tsBW(22, FontWeight.w500),
          ),
          sh02,
          Text(
            "Anonymity grants me the power to delve into genuine conversations",
            style: tsB(16),
          ),
          sh02,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: const [
                  Icon(Icons.add_circle_outline_sharp),
                  Text("Nims")
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.add_circle_outline_sharp),
                  Text("Nims")
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.add_circle_outline_sharp),
                  Text("Nims")
                ],
              )
            ],
          ),
          sh02,
          Row(
            children: const [Text("20 Followers"), Text("20 Followers")],
          ),
          Divider(color: kBlack.withOpacity(0.3)),
          sh02,
          const Skills(),
          sh02,
          Divider(color: kBlack.withOpacity(0.3)),
          sh02,
          const AboutMe()
        ],
      ),
    );
  }
}

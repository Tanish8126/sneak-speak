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
        children: [
          Text(
            "Rahul Gupta",
            style: tsBW(22, FontWeight.w500),
          ),
          sh02,
          FilledButton.icon(
            onPressed: () {},
            label: const Text("Complete Profile"),
            icon: const Icon(Icons.arrow_forward),
          ),
          sh01,
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

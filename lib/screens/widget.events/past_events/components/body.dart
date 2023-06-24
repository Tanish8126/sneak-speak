import 'package:flutter/material.dart';

import '../../../../utils/constants/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kPrimary,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child:
                Image.asset("assets/images/logo.png", height: 100, width: 150),
          ),
          sw02,
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Future of Leadrship\n| Jalak Rawal",
              style: tsB(16),
            ),
            sh01,
            Text(
              "Jalak: CEO @ TAAG\n& Ex-COO,Part...",
              style: tsCommon(14, kBlack.withOpacity(0.7)),
            )
          ]),
        ],
      ),
    );
  }
}

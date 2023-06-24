import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';

class MyEvents extends StatelessWidget {
  static String roteName = './my_events';
  const MyEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: pda(0.02),
      decoration: const BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Hey, coudn't find any events for you at the moment",
          style: tsBW(24, FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        sh04,
        const Text(
          "Our team is just adding the events for the week, come back again soon",
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}

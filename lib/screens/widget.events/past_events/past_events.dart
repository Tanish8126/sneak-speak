import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';
import 'components/body.dart';

class PastEvents extends StatelessWidget {
  static String routeName = './past_events';
  const PastEvents({super.key});

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
        children: [const Body(), sh02, const Body(), sh02, const Body()],
      ),
    );
  }
}

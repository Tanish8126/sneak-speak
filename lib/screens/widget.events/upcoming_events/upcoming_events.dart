import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';
import 'components/outer_container.dart';

class UpcomingEvents extends StatelessWidget {
  static String routeName = './upcoming_events';
  const UpcomingEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: Padding(
          padding: pda(0.02),
          child: Column(
            children: [
              const OuterContainer(),
              sh02,
              const OuterContainer(),
              sh02,
              const OuterContainer(),
            ],
          ),
        ),
      ),
    );
  }
}

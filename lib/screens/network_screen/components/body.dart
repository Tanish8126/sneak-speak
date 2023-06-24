import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';
import 'network_container.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: pda(0.02),
      decoration: BoxDecoration(
        color: kWhite.withOpacity(0.9),
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const NetworkOther(),
            sh02,
            const NetworkOther(),
            sh02,
            const NetworkOther(),
            sh02,
            const NetworkOther(),
            sh02,
          ],
        ),
      ),
    );
  }
}

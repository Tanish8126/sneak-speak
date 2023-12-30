import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';
import 'message_body.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: pda(0.02),
        child: Column(
          children: [
            const MessageBody(),
            sh02,
            const MessageBody(),
            sh02,
            const MessageBody(),
            sh02,
            const MessageBody(),
          ],
        ));
  }
}

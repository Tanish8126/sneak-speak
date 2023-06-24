import 'package:flutter/material.dart';

import '../../../../utils/constants/constants.dart';
import 'opt_input.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: pda(0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            sh02,
            Text("Enter The OTP", style: tsBW(28, FontWeight.w700)),
            sh03,
            OtpInput(),
          ],
        ),
      ),
    );
  }
}

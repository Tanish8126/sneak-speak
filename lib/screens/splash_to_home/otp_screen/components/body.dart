import 'package:flutter/material.dart';

import '../../../../utils/constants/constants.dart';
import 'opt_input.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: pds(0.02, 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          sh02,
          Text(
            "Enter The OTP",
            style: tsWW(24, FontWeight.bold),
          ),
          sh01,
          OtpInput(),
        ],
      ),
    );
  }
}

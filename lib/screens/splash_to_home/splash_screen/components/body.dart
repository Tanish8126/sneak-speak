import 'package:flutter/material.dart';

import '../../../../../utils/constants/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              width: SizeConfig.screenWidth * 0.7,
              child: Image.asset("assets/images/logo.png")),
          // sh03,
          Text(
            "Talent Skool",
            style: tsWW(40, FontWeight.bold),
          )
        ],
      ),
    );
  }
}

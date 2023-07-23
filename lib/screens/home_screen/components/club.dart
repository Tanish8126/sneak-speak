import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';

class Club extends StatelessWidget {
  const Club({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: pda(0.01),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: kBlack.withOpacity(0.3),
                  blurRadius: 2,
                  spreadRadius: -5,
                  blurStyle: BlurStyle.normal,
                  offset: const Offset(0, 5)),
            ],
          ),
          // child: CircleAvatar(
          //   radius: getProportionateScreenHeight(32),
          //   child: Image.asset("assets/images/logo.png"),
          // ),
        ),
        sh01,
        Text(
          "Chess",
          style: tsB(13),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../utils/constants/constants.dart';
import 'inner_container.dart';

class OuterContainer extends StatelessWidget {
  const OuterContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: pda(0.02),
          decoration: const BoxDecoration(
            color: kPrimary,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Lets's make our\nfirst DApp",
                    style: tsBW(22, FontWeight.bold),
                  ),
                  Image.asset(
                    "assets/images/logo.png",
                    height: 150,
                    width: 100,
                  )
                ],
              ),
              const InnerContainer()
            ],
          ),
        )
      ],
    );
  }
}

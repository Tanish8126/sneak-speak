import 'package:flutter/material.dart';

import '../../../../utils/constants/constants.dart';

class InnerContainer extends StatelessWidget {
  const InnerContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: pda(0.02),
      decoration: const BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DateAudience(),
          sh03,
          const Text("Let's make our first DApp!"),
          sh02,
          Row(
            children: [
              CircleAvatar(
                child: Image.asset("assets/images/logo.png"),
              ),
              sw02,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kanishk Khurana",
                    style: tsB(16),
                  ),
                  Text(
                    "Kanishk8125",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: getProportionateScreenHeight(14)),
                  )
                ],
              )
            ],
          ),
          sh02,
          Row(
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.message_outlined)),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  foregroundColor: kWhite,
                  backgroundColor: kBlue,
                ),
                child: const Text("Remind me"),
              )
            ],
          )
        ],
      ),
    );
  }
}

class DateAudience extends StatelessWidget {
  const DateAudience({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: pda(0.01),
          decoration: BoxDecoration(
            color: kPrimary.withOpacity(0.6),
            borderRadius: const BorderRadius.all(
              Radius.circular(40),
            ),
          ),
          child: Text(
            "Fri, Jun 09 @ 7:30 PM",
            style: tsB(14),
          ),
        ),
        Container(
          padding: pda(0.01),
          decoration: BoxDecoration(
            color: kBlack.withOpacity(0.1),
            borderRadius: const BorderRadius.all(
              Radius.circular(40),
            ),
          ),
          child: Row(
            children: [
              Icon(
                Icons.group,
                size: getProportionateScreenHeight(20),
              ),
              sw01,
              Text(
                "193",
                style: tsB(14),
              )
            ],
          ),
        )
      ],
    );
  }
}

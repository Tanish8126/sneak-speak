import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';

class NetworkOther extends StatelessWidget {
  const NetworkOther({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: pda(0.02),
      decoration: const BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                child: Image.asset("assets/images/logo.png"),
              ),
              sw02,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Akash Jain",
                    style: tsBW(18, FontWeight.w700),
                  ),
                  sh01,
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        size: 20,
                      ),
                      Text(
                        "Mumbai, Maharastra",
                        style: tsB(15),
                      ),
                    ],
                  )
                ],
              ),
              FloatingActionButton.small(
                elevation: 0,
                onPressed: () {},
                child: const Icon(Icons.message),
              )
            ],
          ),
          sh02,
          Text(
            "WordPress Developer | Web Developer | Python | Software Developer",
            style: tsB(15),
          ),
          sh02,
          Text(
            "Talk to me about",
            style: tsBW(12, FontWeight.w600),
          ),
          sh01,
          Row(
            children: [
              Container(
                padding: pda(0.01),
                decoration: BoxDecoration(
                  color: kBlack.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(Radius.circular(40)),
                ),
                child: Text(
                  "Freelancing",
                  style: tsB(13),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

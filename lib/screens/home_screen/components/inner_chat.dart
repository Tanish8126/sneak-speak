import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';

class InnerChat extends StatelessWidget {
  const InnerChat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: pda(0.02),
      decoration: const BoxDecoration(
        color: kSecondary,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              // CircleAvatar(
              //   child: Image.asset("assets/images/logo.png"),
              // ),
              sw03,
              Text(
                "Fasil Mohamed",
                style: tsB(16),
              )
            ],
          ),
          sh03,
          Text(
            "Problems you faced as a freelancer",
            style: tsBW(18, FontWeight.w500),
          ),
          sh03,
          Divider(
            color: kBlack.withOpacity(0.1),
            thickness: 2,
          ),
          sh03,
          Row(
            children: [
              Text(
                "6 participants",
                style: tsB(15),
              ),
              sw03,
              Text(
                "7 messages",
                style: tsB(15),
              ),
              const Spacer(),
              FilledButton(onPressed: () {}, child: const Text("Join")),
            ],
          )
        ],
      ),
    );
  }
}

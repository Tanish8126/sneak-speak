// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/constants/constants.dart';
import 'club.dart';
import 'inner_chat.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: pda(0.02),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                label: const Text("Search name, location"),
                focusedBorder: oi15(kBlack.withOpacity(0.3)),
                enabledBorder: oi15(kBlack.withOpacity(0.3)),
                errorBorder: oi15(kRed.withOpacity(0.3)),
                focusedErrorBorder: oi15(kRed.withOpacity(0.3)),
                // prefixIcon: SvgPicture.asset(
                //   "assets/icons/search.svg",
                //   height: getProportionateScreenHeight(20),
                //   width: getProportionateScreenWidth(20),
                //   color: kBlack.withOpacity(0.3),
                // )
              ),
            ),
            sh02,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const Club(),
                  sw03,
                  const Club(),
                  sw03,
                  const Club(),
                  sw03,
                  const Club(),
                  sw03,
                  const Club(),
                  sw03,
                  const Club(),
                  sw03,
                  const Club(),
                ],
              ),
            ),
            sh02,
            Text(
              "Discussions",
              style: tsBW(19, FontWeight.w500),
            ),
            sh03,
            Column(
              children: [
                const InnerChat(),
                sh02,
                const InnerChat(),
                sh02,
                const InnerChat()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

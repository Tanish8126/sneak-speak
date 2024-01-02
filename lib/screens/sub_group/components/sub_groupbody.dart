import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/constants/constants.dart';

class SubgroupBody extends StatelessWidget {
  const SubgroupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: pda(0.02),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: const AssetImage("assets/images/BA.png"),
            backgroundColor: Colors.grey[800],
            radius: 30.r,
          ),
          sw05,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Firefighter",
                style: tsWW(16, FontWeight.bold),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 188, 188, 188)),
                child: Text(
                  "Hosted by - Deep",
                  style:
                      tsCommonW(12, FontWeight.w500, const Color(0xff616161)),
                ),
              ),
            ],
          ),
          const Spacer(),
          SvgPicture.asset("assets/icons/nav.svg")
        ],
      ),
    );
  }
}

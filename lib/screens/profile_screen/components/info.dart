// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/constants.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: pda(0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
              alignment: Alignment.centerRight,
              child: OutlinedButton(
                  style: const ButtonStyle(),
                  onPressed: () {},
                  child: const Text("Edit"))),
          sh01,
          Text(
            "Rahul Gupta",
            style: tsWW(18, FontWeight.w700),
          ),
          sh02,
          Text(
            "Anonymity grants me the power to delve into genuine conversations",
            style: tsCommonW(13, FontWeight.w400, const Color(0xFFaeaeae)),
          ),
          sh02,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton.icon(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/icons/gps.svg",
                    height: 20.h,
                    color: const Color(0xFFD9FFBB),
                  ),
                  label: Text(
                    "Nmims",
                    style:
                        tsCommonW(15, FontWeight.w700, const Color(0xFFD9FFBB)),
                  )),
              TextButton.icon(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/icons/flash.svg",
                    height: 20.h,
                    color: const Color(0xFFFFA3A3),
                  ),
                  label: Text(
                    "999",
                    style:
                        tsCommonW(15, FontWeight.w700, const Color(0xFFFFA3A3)),
                  )),
              TextButton.icon(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/icons/people.svg",
                    height: 20.h,
                    color: const Color(0xFF7059FF),
                  ),
                  label: Text(
                    "999",
                    style:
                        tsCommonW(15, FontWeight.w700, const Color(0xFF7059FF)),
                  )),
              sw05
            ],
          ),
          sh02,
          Row(
            children: [
              ShaderMask(
                shaderCallback: (Rect bounds) => const LinearGradient(
                        colors: [Color(0xFFAB8DFF), Color(0xFF63D0FF)])
                    .createShader(
                  Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                ),
                child: Text("20 Followers",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(15),
                      fontWeight: FontWeight.w700,
                    )),
              ),
              sw09,
              ShaderMask(
                shaderCallback: (Rect bounds) => const LinearGradient(
                        colors: [Color(0xFFAB8DFF), Color(0xFF63D0FF)])
                    .createShader(
                  Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                ),
                child: Text(
                  "20 Following",
                  style: TextStyle(
                    fontSize: getProportionateScreenHeight(15),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constants/constants.dart';

class CustomSurffixIcon extends StatelessWidget {
  const CustomSurffixIcon(
      {super.key, required this.svgIcon, required this.color});

  final String svgIcon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: pdo(0.02, 0.02, 0, 0.02),
      child: SvgPicture.asset(
        svgIcon,
        height: getProportionateScreenWidth(18),
        // ignore: deprecated_member_use
        color: color,
      ),
    );
  }
}

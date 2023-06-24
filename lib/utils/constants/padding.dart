import 'package:flutter/material.dart';

import 'constants.dart';

//all
EdgeInsets pda(double size) {
  return EdgeInsets.all(SizeConfig.screenHeight * size);
}

//only
EdgeInsets pdo(double top, double bottom, double left, double right) {
  return EdgeInsets.only(
      top: SizeConfig.screenHeight * top,
      bottom: SizeConfig.screenHeight * bottom,
      left: SizeConfig.screenHeight * left,
      right: SizeConfig.screenWidth * right);
}

//symetric
EdgeInsets pds(double horizontal, double vertical) {
  return EdgeInsets.symmetric(
      horizontal: SizeConfig.screenHeight * horizontal,
      vertical: SizeConfig.screenWidth * vertical);
}

import 'package:flutter/material.dart';

import 'constants.dart';

//Common
TextStyle tsCommon(double size, color) {
  return TextStyle(
      color: color,
      fontWeight: FontWeight.normal,
      fontSize: getProportionateScreenHeight(size));
}

TextStyle tsCommonW(double size, fontweight, color) {
  return TextStyle(
      color: color,
      fontWeight: fontweight,
      fontSize: getProportionateScreenHeight(size));
}

// //PrimaryColor
// TextStyle tsP(double size) {
//   return TextStyle(
//       color: kPrimary,
//       fontWeight: FontWeight.normal,
//       fontSize: getProportionateScreenHeight(size));
// }

// TextStyle tsPW(double size, weight) {
//   return TextStyle(
//       fontSize: getProportionateScreenHeight(size),
//       fontWeight: weight,
//       color: kPrimary);
// }

//Black
TextStyle tsB(double size) {
  return TextStyle(color: kBlack, fontSize: getProportionateScreenHeight(size));
}

TextStyle tsBW(double size, weight) {
  return TextStyle(
      color: kBlack,
      fontSize: getProportionateScreenHeight(size),
      fontWeight: weight);
}

//Blue
TextStyle tsBu(double size) {
  return TextStyle(color: kBlue, fontSize: getProportionateScreenHeight(size));
}

TextStyle tsBuW(double size, weight) {
  return TextStyle(
      color: kBlue,
      fontSize: getProportionateScreenHeight(size),
      fontWeight: weight);
}

//Red
TextStyle tsR(double size) {
  return TextStyle(color: kRed, fontSize: getProportionateScreenHeight(size));
}

TextStyle tsRW(double size, weight) {
  return TextStyle(
      color: kRed,
      fontSize: getProportionateScreenHeight(size),
      fontWeight: weight);
}

//White
TextStyle tsW(double size) {
  return TextStyle(color: kWhite, fontSize: getProportionateScreenHeight(size));
}

TextStyle tsWW(double size, weight) {
  return TextStyle(
      color: kWhite,
      fontSize: getProportionateScreenHeight(size),
      fontWeight: weight);
}

TextStyle tsPW(double size, weight) {
  return TextStyle(
      color: kPink,
      fontSize: getProportionateScreenHeight(size),
      fontWeight: weight);
}

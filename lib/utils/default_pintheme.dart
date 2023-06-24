import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import 'constants/constants.dart';

final defaultPinTheme = PinTheme(
  width: 56,
  height: 56,
  textStyle: tsWW(16, FontWeight.w600),
  decoration: BoxDecoration(
    color: const Color.fromARGB(255, 232, 104, 255).withOpacity(0.5),
    border: Border.all(color: kBlack),
    borderRadius: BorderRadius.circular(10),
  ),
);

import 'package:flutter/material.dart';

import 'constants/constants.dart';

class DefaultButton2 extends StatelessWidget {
  const DefaultButton2(
      {super.key,
      required this.text,
      required this.press,
      required this.foregroundColor,
      required this.backgroundColor});
  final String? text;
  final Color foregroundColor, backgroundColor;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(300),
      height: getProportionateScreenHeight(56),
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          foregroundColor: foregroundColor,
          backgroundColor: backgroundColor,
        ),
        onPressed: press as void Function()?,
        child: Text(text!, style: tsW(18)),
      ),
    );
  }
}

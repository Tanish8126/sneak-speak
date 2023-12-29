import 'package:flutter/material.dart';

import 'constants/constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.text,
    required this.size,
    this.press,
  });
  final String text;
  final Function? press;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(65),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          foregroundColor: kWhite,
          backgroundColor: kButton,
        ),
        onPressed: press as void Function()?,
        child: Text(text, style: tsW(size)),
      ),
    );
  }
}

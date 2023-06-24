import 'package:flutter/material.dart';

import 'constants/constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.size,
    this.press,
  }) : super(key: key);
  final String text;
  final Function? press;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          foregroundColor: kWhite,
          backgroundColor: kBlue,
        ),
        onPressed: press as void Function()?,
        child: Text(text, style: tsW(size)),
      ),
    );
  }
}

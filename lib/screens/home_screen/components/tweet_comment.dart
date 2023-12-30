import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/constants.dart';

class TweetComment extends StatelessWidget {
  const TweetComment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/message-2.svg"),
        label: Text(
          "999",
          style: tsWW(12, FontWeight.bold),
        ));
  }
}

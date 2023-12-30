import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShareTweet extends StatelessWidget {
  const ShareTweet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          //  shareText();
        },
        icon: SvgPicture.asset("assets/icons/send-2.svg"));
  }
}

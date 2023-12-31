import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:share_plus/share_plus.dart';

class ShareTweet extends StatelessWidget {
  const ShareTweet({
    super.key,
    required this.tweet,
  });
  final String tweet;

  shareText() {
    Share.share(tweet);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          //  shareText();
        },
        icon: SvgPicture.asset("assets/icons/send-2.svg"));
  }
}

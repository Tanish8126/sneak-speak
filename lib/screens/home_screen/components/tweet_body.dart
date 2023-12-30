import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../../../utils/constants/constants.dart';
import 'tweet_exports.dart';

class TweetBody extends StatelessWidget {
  const TweetBody({super.key, required this.tweet});
  final String tweet;

  shareText() {
    Share.share(tweet);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: pda(0.02),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const UserProfilePic(),
        const UserNamePlace(),
        Tweet(tweet: tweet),
        sh04,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LikeTweet(),
            TweetComment(),
            ShareTweet(),
            BookmarkTweet()
          ],
        )
      ]),
    );
  }
}

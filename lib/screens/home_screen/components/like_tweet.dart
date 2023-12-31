import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../resources/post_data_methods.dart';
import '../../../utils/constants/constants.dart';

class LikeTweet extends StatelessWidget {
  const LikeTweet({
    super.key,
  });
  void addLikeToTweet(BuildContext context, tweet, userId) {
    //var state = Provider.of<FeedState>(context, listen: false);
    // var authState = Provider.of<AuthState>(context, listen: false);
    PostDataMethods().addLikeToTweet(tweet, userId);
    //state.addLikeToTweet(model, authState.userId);
  }

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () {
          addLikeToTweet(context, 12334, '11234');
        },
        onFocusChange: (value) {},
        icon: SvgPicture.asset("assets/icons/flash.svg"),
        label: Text(
          "1.4k",
          style: tsWW(12, FontWeight.bold),
        ));
  }
}

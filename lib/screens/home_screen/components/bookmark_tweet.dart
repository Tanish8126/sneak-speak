import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookmarkTweet extends StatelessWidget {
  const BookmarkTweet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/bookmark-2.svg"));
  }
}

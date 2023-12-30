import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';

class Tweet extends StatelessWidget {
  const Tweet({
    super.key,
    required this.tweet,
  });

  final String tweet;

  @override
  Widget build(BuildContext context) {
    return Text(
      tweet,
      style: tsCommonW(15, FontWeight.w500, const Color(0xFF949494)),
      textAlign: TextAlign.left,
    );
  }
}

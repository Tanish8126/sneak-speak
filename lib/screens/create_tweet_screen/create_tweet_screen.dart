import 'package:flutter/material.dart';

import 'components/body.dart';

class CreateTweetScreen extends StatelessWidget {
  static String routeName = './create_tweet_screen';
  const CreateTweetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Body(),
    ));
  }
}

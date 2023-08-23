import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';
import '../../widget.home/native_home/components/body.dart';
import 'info.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/images/bg_image.png"),
          const Info(),
          Divider(color: kWhite.withOpacity(0.4)),
          const NativeBody(
              tweet:
                  "In the corridors of Ridgeview College, whispers spread like wildfire. From scandalous love affairs to clandestine alliances, the gossip mill churned ceaselessly. Friends turned foes, secrets unveiled, and reputations shattered. Amidst the chaos, the power of words held sway, forever altering the course of friendships and shaping the college's social landscape.")
        ],
      ),
    );
  }
}

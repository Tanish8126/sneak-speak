import 'package:flutter/material.dart';

import '../native_home/components/body.dart';

class AlienHome extends StatelessWidget {
  static String routeName = './alien_home';
  const AlienHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          NativeBody(
              tweet:
                  "In the corridors of Ridgeview College, whispers spread like wildfire. From scandalous love affairs to clandestine alliances, the gossip mill churned ceaselessly. Friends turned foes, secrets unveiled, and reputations shattered. Amidst the chaos, the power of words held sway, forever altering the course of friendships and shaping the college's social landscape."),
          NativeBody(
              tweet:
                  "In the corridors of Ridgeview College, whispers spread like wildfire. From scandalous love affairs to clandestine alliances, the gossip mill churned ceaselessly. Friends turned foes, secrets unveiled, and reputations shattered. Amidst the chaos, the power of words held sway, forever altering the course of friendships and shaping the college's social landscape."),
          NativeBody(
              tweet:
                  "In the corridors of Ridgeview College, whispers spread like wildfire. From scandalous love affairs to clandestine alliances, the gossip mill churned ceaselessly. Friends turned foes, secrets unveiled, and reputations shattered. Amidst the chaos, the power of words held sway, forever altering the course of friendships and shaping the college's social landscape."),
          NativeBody(
              tweet:
                  "In the corridors of Ridgeview College, whispers spread like wildfire. From scandalous love affairs to clandestine alliances, the gossip mill churned ceaselessly. Friends turned foes, secrets unveiled, and reputations shattered. Amidst the chaos, the power of words held sway, forever altering the course of friendships and shaping the college's social landscape.")
        ],
      ),
    );
  }
}

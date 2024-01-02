import 'package:flutter/material.dart';

import '../components/sub_groupbody.dart';

class ExploreSubgroup extends StatelessWidget {
  static String routeName = './alien_network';
  const ExploreSubgroup({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [SubgroupBody(), SubgroupBody()],
      ),
    );
  }
}

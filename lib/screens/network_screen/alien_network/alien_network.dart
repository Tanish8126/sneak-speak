import 'package:flutter/material.dart';

import '../components/network_body.dart';

class AlienNetwork extends StatelessWidget {
  static String routeName = './alien_network';
  const AlienNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [NetworkBody(), NetworkBody(), NetworkBody(), NetworkBody()],
      ),
    );
  }
}

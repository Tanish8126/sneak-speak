import 'package:flutter/material.dart';

import '../native_network/components/body.dart';

class AlienNetwork extends StatelessWidget {
  static String routeName = './alien_network';
  const AlienNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [Body(), Body(), Body(), Body()],
      ),
    );
  }
}

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
          NativeBody(),
          NativeBody(),
          NativeBody(),
          NativeBody()
        ],
      ),
    );
  }
}

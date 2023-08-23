import 'package:flutter/material.dart';

import 'components/body.dart';

class NativeHome extends StatelessWidget {
  static String roteName = './native_part';
  const NativeHome({super.key});

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

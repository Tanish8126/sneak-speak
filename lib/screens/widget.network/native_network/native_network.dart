import 'package:flutter/material.dart';

import 'components/body.dart';

class NativeNetwork extends StatelessWidget {
  static String roteName = './native_network';
  const NativeNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [Body(), Body(), Body(), Body()],
      ),
    );
  }
}

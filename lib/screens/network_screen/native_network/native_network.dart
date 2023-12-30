import 'package:flutter/material.dart';

import '../components/network_body.dart';

class NativeNetwork extends StatelessWidget {
  static String roteName = './native_network';
  const NativeNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [NetworkBody(), NetworkBody(), NetworkBody(), NetworkBody()],
      ),
    );
  }
}

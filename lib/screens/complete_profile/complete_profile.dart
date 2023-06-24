import 'package:flutter/material.dart';

import '../../utils/constants/constants.dart';

class CompleteProfile extends StatelessWidget {
  static String routeName = './complete_profile';
  const CompleteProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: Container(),
        centerTitle: false,
        leadingWidth: 0,
        title: Text("Profile", style: tsWW(26, FontWeight.bold)),
        actions: [TextButton(onPressed: () {}, child: const Text("Save"))],
      ),
      body: Column(children: [
        Text(
          "data",
          style: tsB(18),
        )
      ]),
    ));
  }
}

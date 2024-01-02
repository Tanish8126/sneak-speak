import 'package:flutter/material.dart';

import 'components/body.dart';

class GroupInfo extends StatelessWidget {
  static String routeName = './group_info';
  const GroupInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text("Group Info"),
            ),
            body: const Body()));
  }
}

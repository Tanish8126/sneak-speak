import 'package:flutter/material.dart';
import 'package:sneak_speak/utils/constants/constants.dart';

import 'components/body.dart';

class GroupInfo extends StatelessWidget {
  static String routeName = './group_info';
  const GroupInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              leading: const Icon(
                Icons.arrow_back_ios,
                color: kWhite,
                size: 16,
              ),
              title: Text(
                "Group Info",
                style: tsWW(14, FontWeight.w700),
              ),
            ),
            body: const Body()));
  }
}

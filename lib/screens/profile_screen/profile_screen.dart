import 'package:flutter/material.dart';

import '../../utils/constants/constants.dart';
import 'components/body.dart';
import 'components/moreoptions.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = './profile_screen';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: Container(),
            centerTitle: false,
            leadingWidth: 0,
            title: Text("Profile", style: tsWW(26, FontWeight.bold)),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
              IconButton(
                  onPressed: () {
                    moreoptions(context);
                  },
                  icon: const Icon(Icons.more_vert))
            ],
          ),
          backgroundColor: kBlack,
          body: const Body()),
    );
  }
}

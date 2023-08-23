import 'package:flutter/material.dart';
import 'package:sneak_speak/screens/widget.home/alien_home/alien_home.dart';
import 'package:sneak_speak/screens/widget.home/native_home/native_part.dart';

import '../../utils/constants/constants.dart';
import '../widget.network/alien_network/alien_network.dart';
import '../widget.network/native_network/native_network.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = './home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            bottom: const TabBar(
                indicatorWeight: 3,
                indicatorColor: kWhite,
                labelColor: kWhite,
                tabs: [
                  Tab(
                    text: "Native",
                  ),
                  Tab(text: "Alien"),
                ]),
          ),
          body: const TabBarView(children: [NativeHome(), AlienHome()])),
    );
  }
}

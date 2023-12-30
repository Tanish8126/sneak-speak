import 'package:flutter/material.dart';

import '../../utils/constants/constants.dart';
import '../widget.network/alien_network/alien_network.dart';
import '../widget.network/native_network/native_network.dart';

class NetworkScreen extends StatelessWidget {
  static String routeName = './network_screen';
  const NetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            bottom: const TabBar(
                indicatorWeight: 2,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: kWhite,
                labelColor: kWhite,
                tabs: [
                  Tab(
                    text: "Native",
                  ),
                  Tab(text: "Alien"),
                ]),
          ),
          body: const TabBarView(children: [NativeNetwork(), AlienNetwork()])),
    );
  }
}

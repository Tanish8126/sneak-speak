import 'package:flutter/material.dart';

import '../../utils/constants/constants.dart';

class EventsScreen extends StatelessWidget {
  static String routeName = './events_screen';
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: Container(),
            centerTitle: false,
            leadingWidth: 0,
            title: Text(
              "Events",
              style: tsWW(26, FontWeight.bold),
            ),
            actions: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.notification_add)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.message))
            ],
          ),
          backgroundColor: kBlack,
          body: Container()),
    );
  }
}

import 'package:flutter/material.dart';

import '../../utils/constants/constants.dart';
import 'body.dart';

class EventsScreen extends StatelessWidget {
  static String routeName = './events_screen';
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
          ),
          backgroundColor: kBlack,
          body: Padding(
              padding: pda(0.02),
              child: Column(
                children: [
                  const Body(),
                  sh02,
                  const Body(),
                  sh02,
                  const Body(),
                  sh02,
                  const Body(),
                ],
              ))),
    );
  }
}

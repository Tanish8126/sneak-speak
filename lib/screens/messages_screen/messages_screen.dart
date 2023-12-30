import 'package:flutter/material.dart';

import '../../utils/constants/constants.dart';
import 'components/body.dart';

class MessagesScreen extends StatelessWidget {
  static String routeName = './events_screen';
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
          ),
          backgroundColor: kBlack,
          body: const Body()),
    );
  }
}

import 'package:flutter/material.dart';

import 'components/body.dart';

class PhoneAuthScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  const PhoneAuthScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(body: Body()),
    );
  }
}

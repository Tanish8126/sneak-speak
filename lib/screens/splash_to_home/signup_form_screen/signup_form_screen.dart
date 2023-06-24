import 'package:flutter/material.dart';

import 'components/body.dart';

class SignupFormScreen extends StatelessWidget {
  static String routeName = './signup_form';
  const SignupFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(body: Body()));
  }
}

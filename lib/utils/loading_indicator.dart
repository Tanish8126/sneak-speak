import 'package:flutter/material.dart';

import 'constants/constants.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        strokeWidth: 4,
        color: Colors.blueAccent,
        backgroundColor: kWhite,
      ),
    );
  }
}

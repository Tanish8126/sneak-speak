import 'package:flutter/material.dart';

import '../../../../utils/default_button.dart';

class MySkills extends StatelessWidget {
  const MySkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Hey"),
        const Text("Let's build your profile"),
        TextFormField(),
        const DefaultButton(text: "Continue", size: 20)
      ],
    );
  }
}

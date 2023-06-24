import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';

class DiffButton extends StatelessWidget {
  const DiffButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: pds(0.02, 0),
      child: Row(
        children: [
          TextButton(
            onPressed: () {},
            style:
                TextButton.styleFrom(backgroundColor: kBlack.withOpacity(0.1)),
            child: const Text("Explore"),
          ),
          sw03,
          TextButton(
            onPressed: () {},
            style:
                TextButton.styleFrom(backgroundColor: kBlack.withOpacity(0.1)),
            child: const Text("My Discussions"),
          ),
          sw03,
          TextButton(
            onPressed: () {},
            style:
                TextButton.styleFrom(backgroundColor: kBlack.withOpacity(0.1)),
            child: const Text("Saved"),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';
import 'group_data.dart';
import 'member_info.dart';
import 'member_number.dart';
import 'my_info.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: pda(0.02),
      child: Column(
        children: [
          const GroupData(),
          sh05,
          const MemberNumbers(),
          sh04,
          const MyInfo(),
          sh02,
          const MemberInfo()
        ],
      ),
    );
  }
}

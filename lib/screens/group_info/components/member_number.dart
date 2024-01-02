import 'package:flutter/material.dart';
import 'package:sneak_speak/utils/constants/constants.dart';

class MemberNumbers extends StatelessWidget {
  const MemberNumbers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Members",
          style: tsWW(16, FontWeight.w700),
        ),
        Text(
          "98",
          style: tsCommonW(16, FontWeight.w700, const Color(0xffD9FFBB)),
        ),
      ],
    );
  }
}

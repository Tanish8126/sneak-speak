import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserProfilePic extends StatelessWidget {
  const UserProfilePic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: const AssetImage("assets/images/profile.png"),
      backgroundColor: Colors.grey[800],
      radius: 30.r,
    );
  }
}

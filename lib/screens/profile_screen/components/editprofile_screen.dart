import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sneak_speak/utils/constants/constants.dart';
import 'package:sneak_speak/utils/default_button.dart';

class EditProfileScreen extends StatelessWidget {
  static String routeName = './editprofile_screen';
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff1c1c1c),
        title: const Text("Edit Profile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/bg_image.png"),
            sh01,
            Padding(
              padding: pda(0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage:
                        const AssetImage("assets/images/profile.png"),
                    backgroundColor: Colors.grey[800],
                    radius: 30.r,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Get.back();
                    },
                    style: TextButton.styleFrom(),
                    child: Text(
                      "Cancel",
                      style: tsCommonW(
                          12, FontWeight.w700, const Color(0xff343434)),
                    ),
                  )
                ],
              ),
            ),
            sh05,
            Padding(
              padding: pda(0.02),
              child: Row(
                children: [
                  const Text("Name"),
                  sw05,
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: oi15(const Color(0xff343434)),
                      enabledBorder: oi15(const Color(0xff343434)),
                    ),
                  ))
                ],
              ),
            ),
            sh05,
            Padding(
              padding: pda(0.02),
              child: Row(
                children: [
                  const Text("Bio"),
                  sw05,
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: oi15(const Color(0xff343434)),
                      enabledBorder: oi15(const Color(0xff343434)),
                    ),
                  ))
                ],
              ),
            ),
            Padding(
              padding: pda(0.02),
              child: const DefaultButton(text: 'Save', size: 15),
            )
          ],
        ),
      ),
    );
  }
}

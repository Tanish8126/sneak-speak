import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/constants.dart';
import '../../../../utils/default_button.dart';
import '../../../../utils/default_text_field.dart';
import '../../../main_screen/main_screen.dart';

class BuildProfile extends StatelessWidget {
  const BuildProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: pda(0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                size: getProportionateScreenHeight(40),
              ),
              padding: pda(0),
              alignment: Alignment.topLeft,
            ),
            Text("Hey", style: tsBW(28, FontWeight.w700)),
            sh01,
            Text("Let's build your profile", style: tsBW(28, FontWeight.w700)),
            sh04,
            Center(
              child: CircleAvatar(
                child: Image.asset(
                  "assets/images/logo.png",
                  height: getProportionateScreenHeight(100),
                  width: getProportionateScreenHeight(100),
                ),
              ),
            ),
            sh03,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.file_upload_outlined),
                    label: const Text("Upload")),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.shuffle_outlined),
                    label: const Text("Shuffle")),
              ],
            ),
            sh04,
            const Text("Full Name"),
            sh02,
            const DefaultTextField(
              labeltext: "Enter Full Name",
              hinttext: "Enter Full Name",
              keyboardType: TextInputType.name,
              controller: null,
              onSaved: null,
              maxlength: null,
              obscureText: false,
              suffixicon: null,
              onChanged: null,
              prefixtext: null,
              validator: null,
              prefixicon: null,
            ),
            sh03,
            const Text("Phone Number (Optional)"),
            sh02,
            const DefaultTextField(
              labeltext: "Eg.9999888877",
              hinttext: "Eg.9999888877",
              keyboardType: TextInputType.number,
              controller: null,
              onSaved: null,
              maxlength: null,
              obscureText: false,
              suffixicon: null,
              onChanged: null,
              prefixtext: null,
              validator: null,
              prefixicon: null,
            ),
            sh05,
            DefaultButton(
              text: "Continue",
              size: 20,
              press: () {
                Get.offAllNamed(MainScreen.routeName);
              },
            )
          ],
        ),
      ),
    );
  }
}

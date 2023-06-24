import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/constants.dart';
import '../../../../controller/auth_controller.dart';
import '../../../../utils/default_button.dart';
import '../../otp_screen/otp_screen.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();
  final _authController = Get.put(AuthController());
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: pda(0.02),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          sh02,
          Text("Login with Phone", style: tsBW(28, FontWeight.w700)),
          const Spacer(),
          const Text("Phone Number"),
          sh02,
          Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  style: tsBW(18, FontWeight.bold),
                  textAlign: TextAlign.start,
                  controller: _controller,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10),
                  ],
                  keyboardType: TextInputType.number,
                  validator: (number) =>
                      vPhoneValidator.hasMatch(number!) ? null : fPhoneNumber,
                  onChanged: (val) {
                    _authController.phoneNo.value = val;
                  },
                  onSaved: (val) => _authController.phoneNo.value = val!,
                  decoration: InputDecoration(
                    contentPadding: pda(0.03),
                    // focusedBorder: oi32(kMainColor),
                    // enabledBorder: oi32(kMainColor),
                    // errorBorder: oi32(kMainColor),
                    // focusedErrorBorder: oi32(kMainColor),
                    fillColor: kBlack,
                    errorMaxLines: 2,
                    errorStyle: tsB(12),
                    floatingLabelAlignment: FloatingLabelAlignment.start,

                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    prefix: _authController.showPrefix.value
                        ? Padding(
                            padding: pds(0.01, 0),
                            child: Text('+91', style: tsB(18)),
                          )
                        : null,
                    hintText: "Enter your Mobile Number",
                    hintStyle: tsB(16),
                  ),
                ),
                sh02,
                Text("We will send an otp to this number. ", style: tsB(16)),
                sh03,
                TextButton(
                    onPressed: () {},
                    child: const Text("Go back to Google Signin")),
              ],
            ),
          ),
          const Spacer(),
          DefaultButton(
            text: "Get Otp",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                _authController.getOtp(context);
                Get.toNamed(OtpScreen.routeName);
              }
            },
            size: 18,
          ),
        ]),
      ),
    );
  }
}

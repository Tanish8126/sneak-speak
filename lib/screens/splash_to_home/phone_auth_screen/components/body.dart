import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/constants.dart';
import '../../../../controller/auth_controller.dart';
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
          const Spacer(),
          Text(
            "Enter your number",
            style: tsWW(24, FontWeight.bold),
          ),
          sh02,
          TextFormField(
            style: tsPW(26, FontWeight.bold),
            textAlign: TextAlign.center,
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
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              fillColor: kBlack,
              prefixIcon: SizedBox(
                width: getProportionateScreenWidth(70),
                child: Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(color: Color(0xFF949494)),
                  child: Text('IND', style: tsWW(18, FontWeight.bold)),
                ),
              ),
              hintText: "3333-333-333",
              hintStyle: tsCommonW(26, FontWeight.bold, kButton),
            ),
          ),
          sh05,
          SizedBox(
            width: double.infinity,
            height: getProportionateScreenHeight(65),
            child: TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                foregroundColor: kWhite,
                backgroundColor: kButton,
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  _authController.getOtp(context);
                  Get.toNamed(OtpScreen.routeName);
                }
              },
              child: Text("Continue", style: tsW(18)),
            ),
          )
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';
import 'components/body.dart';

class PhoneAuthScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  const PhoneAuthScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              leading: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back,
                      size: getProportionateScreenHeight(40), color: kBlack)),
              backgroundColor: kWhite),
          body: const Body()),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../resources/post_data_methods.dart';
import '../../../utils/constants/constants.dart';

class Body extends StatelessWidget {
  Body({
    super.key,
  });

  final PostDataMethods _postDataMethods = Get.put(PostDataMethods());
  final TextEditingController _tweetController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: pda(0.02),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter your title here(if any)",
              hintStyle: tsCommon(16, kWhite),
              focusedBorder: oi15(const Color(0xff343434)),
              enabledBorder: oi15(const Color(0xff343434)),
            ),
          ),
          sh03,
          TextFormField(
            controller: _tweetController,
            textAlign: TextAlign.left,
            textCapitalization: TextCapitalization.words,
            maxLength: 250,
            maxLines: 10,
            decoration: InputDecoration(
              hintText: "I Spit it out.....",
              hintStyle: tsCommon(16, kWhite),
            ),
          ),
          const Spacer(),
          Row(
            children: [
              SvgPicture.asset(
                "assets/icons/floating.svg",
                height: 40.h,
              ),
              const Spacer(),
              OutlinedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text("Cancel")),
              sw03,
              OutlinedButton(
                  onPressed: () {
                    _postDataMethods.saveTweet(context, _tweetController.text);
                  },
                  child: const Text("Go"))
            ],
          )
        ],
      ),
    );
  }
}

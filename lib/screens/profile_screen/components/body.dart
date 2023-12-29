import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/constants.dart';
import '../../widget.home/native_home/components/body.dart';
import 'info.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Padding(
                padding: pdo(0, 0.035, 0, 0),
                child: AspectRatio(
                  aspectRatio: 3,
                  child: Image.asset("assets/images/bg_image.png"),
                ),
              ),
              Padding(
                padding: pdo(0, 0, 0.03, 0),
                child: GestureDetector(
                  onTap: () {
                    _showSimpleDialog(context);
                  },
                  child: CircleAvatar(
                    backgroundImage:
                        const AssetImage("assets/images/profile.png"),
                    backgroundColor: Colors.grey[800],
                    radius: 30.r,
                  ),
                ),
              ),
            ],
          ),
          const Info(),
          Divider(color: kWhite.withOpacity(0.4)),
          const NativeBody(
              tweet:
                  "In the corridors of Ridgeview College, whispers spread like wildfire. From scandalous love affairs to clandestine alliances, the gossip mill churned ceaselessly. Friends turned foes, secrets unveiled, and reputations shattered. Amidst the chaos, the power of words held sway, forever altering the course of friendships and shaping the college's social landscape.")
        ],
      ),
    );
  }

  Future<void> _showSimpleDialog(context) async {
    await showDialog<void>(
        context: context,
        barrierColor: ktrans,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: ktrans,
            insetPadding: pda(0.0),
            contentPadding: pda(0.0),
            content: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                CircleAvatar(
                  backgroundImage:
                      const AssetImage("assets/images/profile.png"),
                  backgroundColor: Colors.grey[800],
                  radius: 50.r,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        gradient: const LinearGradient(
                            colors: [Color(0x19ffffff), Color(0x19d9d9d9)],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                    child: Text(
                      'Cancel',
                      style: tsWW(12, FontWeight.w600),
                    )),
              ],
            ),
          );
        });
  }
}

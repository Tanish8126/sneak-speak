import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [Text("About Me"), Icon(Icons.edit)],
        ),
        sh02,
        Container(
          padding: pda(0.01),
          decoration: BoxDecoration(
            color: kBlack.withOpacity(0.1),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: Row(
            children: [
              const Icon(Icons.work),
              sw02,
              const Text("Experience working on 1 project")
            ],
          ),
        ),
        sh02,
        Container(
          padding: pda(0.01),
          decoration: BoxDecoration(
            color: kBlack.withOpacity(0.1),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: Row(
            children: [
              const Icon(Icons.location_pin),
              sw02,
              const Text("Located in Delhi")
            ],
          ),
        ),
        sh02,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                padding: pda(0.02),
                decoration: BoxDecoration(
                  color: kBlue.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "I am currently learning",
                      style: tsCommon(14, kBlack.withOpacity(0.6)),
                    ),
                    sh01,
                    const Text("Blokchain")
                  ],
                ),
              ),
              sw04,
              Container(
                padding: pda(0.02),
                decoration: BoxDecoration(
                  color: kBlue.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "I am intressted in",
                      style: tsCommon(14, kBlack.withOpacity(0.6)),
                    ),
                    sh01,
                    const Text("Startups")
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

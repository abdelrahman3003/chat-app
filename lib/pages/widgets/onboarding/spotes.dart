import 'package:flutter/material.dart';

import '../../../models/onboarding.dart';

class Spotes extends StatelessWidget {
  const Spotes({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 7,
      child: ListView.builder(
        itemCount: onboadingList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Container(
              width: 8,
              height: 8,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          );
        },
      ),
    );
  }
}

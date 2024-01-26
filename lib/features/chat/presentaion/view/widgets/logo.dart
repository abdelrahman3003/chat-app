import 'package:chat_app1/constants.dart';
import 'package:chat_app1/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: Constant.kprimaryColor2,
            width: 1.5,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 13),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "T",
                style: Styles.textStyle30
                    .copyWith(fontSize: 30, color: Constant.kprimaryColor2),
              ),
              Text("emsah",
                  style: Styles.textStyle30
                      .copyWith(fontSize: 25, color: Constant.kprimaryColor2)),
            ],
          ),
          Text(
            "Chat",
            style: Styles.textStyle25
                .copyWith(fontSize: 20, color: Constant.kprimaryColor2),
          ),
        ],
      ),
    );
  }
}

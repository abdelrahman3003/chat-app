import 'package:chat_app1/constants.dart';
import 'package:chat_app1/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ChatLogo extends StatelessWidget {
  const ChatLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: Constant.kprimaryColor2,
            width: 1.5,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "T",
                style: Styles.textStyle30
                    .copyWith(fontSize: 14, color: Constant.kprimaryColor2),
              ),
              Text("emsah",
                  style: Styles.textStyle30
                      .copyWith(fontSize: 12, color: Constant.kprimaryColor2)),
            ],
          ),
          Text(
            "Chat",
            style: Styles.textStyle25
                .copyWith(fontSize: 8, color: Constant.kprimaryColor2),
          ),
        ],
      ),
    );
  }
}

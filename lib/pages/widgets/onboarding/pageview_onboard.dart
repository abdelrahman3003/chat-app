import 'package:chat_app1/constant.dart/styles%20copy.dart';
import 'package:chat_app1/models/onboarding.dart';
import 'package:flutter/material.dart';

class PageViewOnboarding extends StatelessWidget {
  const PageViewOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return PageView.builder(
      itemCount: onboadingList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            SizedBox(
              height: 200,
              width: width * .9,
              child: Image.asset(onboadingList[index].image),
            ),
            Text(
              onboadingList[index].title,
              style: Styles.textStyle25,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Opacity(
                opacity: .4,
                child: Text(
                  textAlign: TextAlign.center,
                  onboadingList[index].subtilte,
                  style: Styles.textStyle16,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

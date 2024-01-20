import 'package:chat_app1/constant.dart/constant.dart';
import 'package:chat_app1/constant.dart/styles%20copy.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class custombutton extends StatelessWidget {
  custombutton({super.key, required this.bottunname, this.ontap});
  final String bottunname;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(
            color: kprimaryColor, borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: Text(
          bottunname,
          style: Styles.textStyle18.copyWith(color: Colors.white),
        )),
      ),
    );
  }
}

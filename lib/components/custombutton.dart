import 'package:chat_app1/constant.dart/constant.dart';
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
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          bottunname,
          style: TextStyle(color: kprimaryColor, fontSize: 20),
        )),
      ),
    );
  }
}

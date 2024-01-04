import 'package:flutter/material.dart';

void showsnackbar(BuildContext context, String messege) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(messege)));
}

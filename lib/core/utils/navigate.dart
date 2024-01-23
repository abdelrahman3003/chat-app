import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

dynamic navigateToPage(BuildContext context, String page) {
  Future.delayed(
    const Duration(seconds: 2),
    () {
      GoRouter.of(context).push(page, extra: "");
    },
  );
}

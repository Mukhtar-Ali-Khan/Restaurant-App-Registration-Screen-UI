import 'package:flutter/material.dart';

class AppNavigators {
  static Future navigateTo({
    required BuildContext context,
    required Widget screenName,
  }) {
    return Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => screenName));
  }

  static void backTo({required BuildContext context}) {
    return Navigator.of(context).pop();
  }
}

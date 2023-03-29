import 'package:flutter/material.dart';

import 'app_fonts.dart';

class AppButtons {
  static MaterialButton materialButton({
    required String buttonName,
    required double buttonWidth,
    required VoidCallback onTap,
  }) {
    return MaterialButton(
      onPressed: onTap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      color: Colors.pinkAccent.shade400,
      height: 55,
      minWidth: buttonWidth,
      elevation: 8,
      child: Text(
        buttonName,
        style: AppFonts.comfortaStyle(),
      ),
    );
  }
}

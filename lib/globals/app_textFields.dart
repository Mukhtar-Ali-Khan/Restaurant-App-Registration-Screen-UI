import 'package:flutter/material.dart';

import 'app_fonts.dart';

class AppTextFields {
  static InputDecoration textFieldDecoration({
    required String hintText,
    required IconData prefixIconData,
  }) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: AppFonts.comfortaStyle(),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 2),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.orange.shade900, width: 2),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
      prefixIcon: Icon(
        prefixIconData,
        size: 29,
        color: Colors.white,
      ),
    );
  }
}

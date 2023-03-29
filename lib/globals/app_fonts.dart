import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextStyle boldStyle() {
    return GoogleFonts.lobster(
        fontSize: 29, fontWeight: FontWeight.w800, color: Colors.white);
  }

  static TextStyle comfortaStyle() {
    return GoogleFonts.comfortaa(
        fontWeight: FontWeight.w700, fontSize: 18, color: Colors.white);
  }
  static TextStyle monteseratStyle(){
    return GoogleFonts.montserrat(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }
}

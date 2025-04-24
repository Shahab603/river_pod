
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TextStyles {
  final String? fontFamilyAll = GoogleFonts.poppins().fontFamily;
  static  TextStyle heading = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontFamily: GoogleFonts.lato().fontFamily,
    
  );

  static  TextStyle body = TextStyle(
    fontSize: 16,
    fontFamily: GoogleFonts.lato().fontFamily,
    
  );

  static  TextStyle caption = TextStyle(
    fontSize: 12,
    fontStyle: FontStyle.italic,
    fontFamily: GoogleFonts.lato().fontFamily,
    
  );
}
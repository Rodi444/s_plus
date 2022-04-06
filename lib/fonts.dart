import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class textapp extends StatelessWidget {
  const textapp({ Key? key,
  this.text,
  this.color,
  this.fontSize,
  this.textstyle,
  // this.iconButton,
   }) : super(key: key);
   
final TextStyle? textstyle;
final String? text;
final Color? color;
final double? fontSize;
// final IconButton? iconButton; 



  @override
  Widget build(BuildContext context) {
    return Text(toString(),
      
      style: GoogleFonts.lato(
      fontSize: fontSize,
      color: color,
      )
    );
  }
}
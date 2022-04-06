import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s_plus/color.dart';
import '../fonts.dart';

class buttonapp extends StatelessWidget {
  const buttonapp({
    Key? key,
  }) : super(key: key);

  // Confirm
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: textapp(
          textstyle: GoogleFonts.lato(),
          text: "CONFIRM",
          color: AppColor.primarycolor,
          fontSize: 10,
        ));
  }
}

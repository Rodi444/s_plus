import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s_plus/AppColors/color.dart';

class ButtonApp extends StatelessWidget {
  final String buttonText;
  final double width;
  final Function onpressed;
  final double height;
  final double fontSize;

  const ButtonApp({
    required this.buttonText,
    required this.width,
    required this.height,
    required this.onpressed,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow:const [
            BoxShadow(
                color: Color.fromARGB(40, 0, 0, 0), offset: Offset(0, 4), blurRadius: 4.0)],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            stops: const [0.0, 1.0],
            colors: [
              AppColor.primarycolor.withOpacity(1.0),
              AppColor.secondcolor.withOpacity(0.5),
            ],
          ),
          color: AppColor.primarycolor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              minimumSize: MaterialStateProperty.all(Size(width, height)),
              backgroundColor:
                  MaterialStateProperty.all(Colors.transparent),
              // elevation: MaterialStateProperty.all(3),
              shadowColor:
                  MaterialStateProperty.all(Colors.transparent),
                  ),
          onPressed: () {
            onpressed();
          },
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            child: Text(
              buttonText,
              style: GoogleFonts.lato(
                fontSize: fontSize,
                fontStyle: FontStyle.normal,
                // fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

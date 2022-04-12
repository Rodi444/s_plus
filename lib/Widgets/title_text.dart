import 'package:flutter/material.dart';


class TitleText extends StatelessWidget {
    final String tostring;
  final double fontsize;

  const TitleText({ Key? key,
  required this.tostring,
  required this.fontsize
   }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Text(tostring,
    style: TextStyle(
      fontSize: fontsize,
      color: Colors.white,
    )
    );
  }
}
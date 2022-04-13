import 'package:flutter/material.dart';

class LoginBackground {
  static Color gradient1 = const Color.fromARGB(255, 108, 113, 215);
  static Color gradient2 = const Color.fromARGB(255, 155, 112, 183);
  static Color gradient3 = const Color.fromARGB(255, 250, 175, 184);
  static BoxDecoration gradient = BoxDecoration(
    boxShadow: const [
      BoxShadow(
          color: Color.fromARGB(40, 0, 0, 0),
          offset: Offset(0, 4),
          blurRadius: 4.0)
    ],
    gradient: const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.center,
      stops: [0.0, 1.0],
      colors: [
        Color.fromARGB(255, 108, 113, 215),
        Color.fromARGB(255, 250, 175, 184),
      ],
    ),
    borderRadius: BorderRadius.circular(10),
  );
}

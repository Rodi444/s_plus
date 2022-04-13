import 'package:flutter/material.dart';

class LightBoxDecoration {
  static BoxDecoration background = const BoxDecoration(
    image: DecorationImage(
      image: AssetImage("Images/background.png"),
      fit: BoxFit.cover,
    ),
  );
}


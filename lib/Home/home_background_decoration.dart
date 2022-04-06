import 'package:flutter/material.dart';

class LightBoxDecoration {
  static BoxDecoration lightBoxDecoration = const BoxDecoration(
    image: DecorationImage(
      image: AssetImage("Images/light_background.png"),
      fit: BoxFit.cover,
    ),
  );
  static BoxDecoration darkBoxDecoration = const BoxDecoration(
    image: DecorationImage(
      image: AssetImage("Images/dark_background.png"),
      fit: BoxFit.cover,
    ),
  );
}


import 'package:flutter/material.dart';

class AppColor{

  static Color primarycolor = const Color.fromARGB(255, 67, 71, 157);
  static Color secondcolor = const Color.fromARGB(255, 118, 100, 196);
  static Color white = const Color.fromARGB(255, 255, 255, 255);
  static BoxDecoration gradient = BoxDecoration(
      boxShadow:const [
            BoxShadow(
                color: Color.fromARGB(40, 0, 0, 0), offset: Offset(0, 4), blurRadius: 4.0)],
          gradient: const LinearGradient(
            
            begin: Alignment.topCenter,
            end: Alignment.center,
            stops: [0.0, 1.0],
            colors: [
              Color.fromARGB(255, 86, 92, 208),
                Color.fromARGB(255, 118, 100, 196),
            ],
          ),
          color: const Color.fromARGB(255, 86, 92, 208),
          borderRadius: BorderRadius.circular(10),


      );

}






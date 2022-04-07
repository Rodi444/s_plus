import 'package:flutter/material.dart';


class AppGradient extends StatelessWidget {
const AppGradient({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container( 
      decoration: BoxDecoration(
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


      ),
    );
  }
}
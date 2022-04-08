import 'package:flutter/material.dart';
import 'package:s_plus/pages/addforum.dart';

class kNavigationBar extends StatelessWidget {
  const kNavigationBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
          color: const Color.fromARGB(165, 86, 92, 208),
          shape: const CircularNotchedRectangle(),
        child: Container(height: 70,
        child: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false, 
        backgroundColor: const Color.fromARGB(0, 0, 0, 0) ,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset("lib/imagesicon/home.png",
              scale: 15,),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset("lib/imagesicon/alarm.png",
              scale: 15,),
              label: '',
            ),
        ]),),
        );
  }
}
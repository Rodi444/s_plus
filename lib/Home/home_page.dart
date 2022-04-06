import 'package:flutter/material.dart';
import 'package:s_plus/Home/home_background_decoration.dart';
import 'package:s_plus/Widgets/app_bar.dart';
import 'package:s_plus/Widgets/gridview.dart';
import 'package:s_plus/Widgets/navigationbar.dart';

class HomeBackgroundLight extends StatelessWidget {
  const HomeBackgroundLight({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: LightBoxDecoration.darkBoxDecoration,
      child: Scaffold(
        appBar: const PreferredSize( 
          preferredSize: Size.fromHeight(75),
           child: AppBarGlobal(),
        ),
        backgroundColor: Colors.transparent,
        body: kGridView(),
        bottomNavigationBar: BottomAppBar(
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
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: Color.fromARGB(255, 86, 92, 208),
        child: const Icon(Icons.add, size: 40,),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        ),
        );

  }
}

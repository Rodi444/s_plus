import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      extendBody: true,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton:FloatingActionButton(
        backgroundColor: Color(0000),
        onPressed: (){},
        tooltip: 'Increment',
        child: Image.asset("lib/imagesicon/add.png",scale: 5),
        elevation: 4.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
  Widget get bottomNavigationBar {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      
      child:  BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false, 
        backgroundColor: const Color.fromARGB(153, 118, 100, 196) ,
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
          ],
        ),
        );
      }
}


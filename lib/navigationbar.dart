import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    bottomNavigationBar: BottomNavigationBar(
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'ADD',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm),
            label: 'ALARM',
          ),
        ],
        
      ),



    );
  }
}
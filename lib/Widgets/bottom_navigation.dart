import 'package:flutter/material.dart';
import 'package:s_plus/Home/home_page_light.dart';

class KNavigationBar extends StatefulWidget {
  const KNavigationBar({ Key? key }) : super(key: key);

  @override
  State<KNavigationBar> createState() => _KNavigationBarState();
}
int currentIndex = 0;
final home = [
const HomeBackgroundDark()
];

class _KNavigationBarState extends State<KNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
          color: const Color.fromARGB(91, 86, 92, 208),
          shape: const CircularNotchedRectangle(),
        child: SizedBox (height: 70,
        child: BottomNavigationBar(
          onTap: (index) => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeBackgroundDark()),
            ),
        showUnselectedLabels: false,
        showSelectedLabels: false, 
        backgroundColor: const Color.fromARGB(0, 0, 0, 0) ,
          items: const [
            BottomNavigationBarItem(
              icon:  Icon(Icons.home_rounded,
              size: 40,
              color: Color.fromARGB(255, 250, 175, 184),),
              // activeIcon: HomeBackgroundDark(),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search,
              size: 40,
              color: Color.fromARGB(255, 250, 175, 184),),
              label: '',
            ),
        ]),),
        );
  }
}
import 'package:flutter/material.dart';
import 'package:s_plus/AppColors/color.dart';
import 'package:s_plus/Home/home_background_decoration.dart';
import 'package:s_plus/pages/addforum.dart';
import 'package:s_plus/Widgets/bottom_navigation.dart';
import 'package:s_plus/Widgets/drawer.dart';
import 'package:s_plus/Widgets/switchhome.dart';
import 'package:s_plus/theme_app/config.dart';

class HomeBackgroundDark extends StatefulWidget {
  const HomeBackgroundDark({Key? key}) : super(key: key);

  @override
  State<HomeBackgroundDark> createState() => _HomeBackgroundDarkState();
}
bool iconBool = false;

IconData _iconLight = Icons.wb_sunny;
IconData _iconDark = Icons.nights_stay;


class _HomeBackgroundDarkState extends State<HomeBackgroundDark> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: LightBoxDecoration.background,
      child: Scaffold(
        drawer: AppDrawer.appdrawer,
        appBar: AppBar(   
      title: Image.asset(
        'Images/Logo_Grande.png',
        height: 55,
        alignment: Alignment.center,
      ),
      actions: [
        IconButton(
          onPressed: () {
            setState(() {
              currentTheme.switchTheme();
              iconBool =!iconBool;
            });
          },
          icon: Icon(iconBool? _iconDark : _iconLight)
        ),
      ],
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      iconTheme: IconThemeData(color: Color.fromARGB(255, 250, 175, 184)),
    ),
        backgroundColor: Colors.transparent,
        //body:
        bottomNavigationBar: const KNavigationBar(),
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const AddForum()),
  );
        },
        backgroundColor: const Color.fromARGB(255, 86, 92, 208),
        child: const Icon(Icons.add, size: 40,
        color: Color.fromARGB(255, 250, 175, 184),),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        ),
        );

  }
}

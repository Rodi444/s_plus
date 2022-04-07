import 'package:flutter/material.dart';
import 'package:s_plus/Home/home_background_decoration.dart';
import 'package:s_plus/Widgets/app_bar.dart';
import 'package:s_plus/Widgets/app_bar_navigation_bar.dart';
import 'package:s_plus/Widgets/drawer.dart';
import 'package:s_plus/Widgets/gridview.dart';
import 'package:s_plus/Widgets/switchhome.dart';

class HomeBackgroundLight extends StatelessWidget {
  const HomeBackgroundLight({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: LightBoxDecoration.darkBoxDecoration,
      child: Scaffold(
        drawer: AppDrawer.appdrawer,
        appBar: AppBars.appbar,
        backgroundColor: Colors.transparent,
        body: SwitchHome.switchhome,
        bottomNavigationBar: AppBars.bottomappbar,
        floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: Color.fromARGB(255, 86, 92, 208),
        child: const Icon(Icons.add, size: 40,),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        ),
        );

  }
}

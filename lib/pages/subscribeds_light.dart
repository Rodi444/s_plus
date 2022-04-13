import 'package:flutter/material.dart';
import 'package:s_plus/Home/home_background_decoration.dart';
import 'package:s_plus/Widgets/bottom_navigation.dart';
import 'package:s_plus/Widgets/drawer.dart';
import 'package:s_plus/Widgets/switchhome.dart';
import 'package:s_plus/theme_app/config.dart';

import '../Home/home_page_light.dart';

class SubscribedDark extends StatefulWidget {
  const SubscribedDark({Key? key}) : super(key: key);

  @override
  State<SubscribedDark> createState() => _SubscribedDarkState();
}

IconData _iconLight = Icons.wb_sunny;
IconData _iconDark = Icons.nights_stay;

class _SubscribedDarkState extends State<SubscribedDark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  iconBool = !iconBool;
                });
              },
              icon: Icon(iconBool ? _iconDark : _iconLight)),
        ],
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.transparent,
      body: const SwitchHome(),
      bottomNavigationBar: const KNavigationBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 86, 92, 208),
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

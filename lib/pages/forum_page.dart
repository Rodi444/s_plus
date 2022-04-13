import 'package:flutter/material.dart';
import 'package:s_plus/Home/home_background_decoration.dart';
import 'package:s_plus/Widgets/bottom_navigation.dart';
import 'package:s_plus/Widgets/drawer.dart';
import 'package:s_plus/pages/addcomment.dart';
import 'package:s_plus/pages/forum_body.dart';

class ForumPage extends StatelessWidget {
  const ForumPage({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: LightBoxDecoration.darkBoxDecoration,
      child: Scaffold(
        drawer: AppDrawer.appdrawer,

        //APP BAR

        appBar:  AppBar(
          title: Image.asset(
            'Images/LogoS+.png',
            height: 55,
            alignment: Alignment.center,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 36,
              ),
            ),
          ],
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,

        //BODY

        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
             ForumBody(),
          ],
        ),

        //BOTTON NAVEGATION BAR

        bottomNavigationBar: const kNavigationBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddComment()),
            );
          },
          backgroundColor: const Color.fromARGB(255, 86, 92, 208),
          child: const Icon(
            Icons.add,
            size: 40,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
      );
  }
}
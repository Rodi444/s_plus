import 'package:flutter/material.dart';
import 'package:s_plus/Home/home_background_decoration.dart';
import 'package:s_plus/Home/home_page_light.dart';
import 'package:s_plus/Widgets/bottom_navigation.dart';
import 'package:s_plus/Widgets/drawer.dart';
import 'package:s_plus/Widgets/forum_comments.dart';
import 'package:s_plus/pages/addcomment.dart';
import 'package:s_plus/pages/forum_body.dart';
import 'package:s_plus/theme_app/config.dart';

import '../Firestore/forums.dart';
 
class ForumPage extends StatefulWidget {
  final Forum forum;
  const ForumPage({Key? key, required this.forum}) : super(key: key);

  @override
  State<ForumPage> createState() => _ForumPageState();
  
}
IconData _iconLight = Icons.wb_sunny;
IconData _iconDark = Icons.nights_stay;

class _ForumPageState extends State<ForumPage> {
  @override
  Widget build(BuildContext context) {
    String teste = widget.forum.id;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(iconBool ? "Images/background_light.png" : "Images/background_dark.png"),
        fit: BoxFit.cover)
      ),
      child: Scaffold(
        drawer: AppDrawer.appdrawer,

        //APP BAR

        appBar: AppBar(
          title: Image.asset(
            (iconBool? 'Images/Logo_Grande_preta.png' : 'Images/Logo_Grande.png'),
            height: 55,
            alignment: Alignment.center,
          ),
          actions: [
        //     AnimSearchBar(width: 50, textController: textController, onSuffixTap:  () { SEARCH
        //   setState(() {
        //     textController.clear();
        //   });
        // },),
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
          iconTheme: const IconThemeData(color: Color.fromARGB(255, 250, 175, 184)),
        ),
        backgroundColor: Colors.transparent,

        //BODY

        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ForumBody(name: widget.forum.name, description: widget.forum.description, id: widget.forum.id,),
              ForumComments(id: widget.forum.id),
            ],
          ),
        ),

        //BOTTON NAVEGATION BAR

        bottomNavigationBar: const KNavigationBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,

              MaterialPageRoute(builder: (context) => AddComment(id: teste)),


            );
          },
          backgroundColor: const Color.fromARGB(255, 250, 175, 184),
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

import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:s_plus/Widgets/grid_view.dart';
import 'package:s_plus/pages/addforum.dart';
import 'package:s_plus/Widgets/bottom_navigation.dart';
import 'package:s_plus/Widgets/drawer.dart';
import 'package:s_plus/Widgets/switchhome.dart';
import 'package:s_plus/theme_app/config.dart';
import 'package:s_plus/pages/forum_page.dart';
import '../Firestore/forums.dart';
import 'package:s_plus/Widgets/search.dart';

class HomeBackgroundDark extends StatefulWidget {
  const HomeBackgroundDark({Key? key}) : super(key: key);

  @override
  State<HomeBackgroundDark> createState() => _HomeBackgroundDarkState();

  
}
  // TextEditingController textController = TextEditingController(); SEARCH

bool iconBool = false;

IconData _iconLight = Icons.wb_sunny;
IconData _iconDark = Icons.nights_stay;

class _HomeBackgroundDarkState extends State<HomeBackgroundDark> {
  Future<List<Forum>> fetchForum() async {
    List<Forum> forumList = [];
    var collection = FirebaseFirestore.instance.collection("Forums");
    final forumCollection = await collection.get();
    for (final document in forumCollection.docs) {
      var forum = Forum.fromDocumentSnapshot(doc: document);
      forumList.add(forum);
    }
    return forumList;
  }
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(iconBool ? "Images/background_light.png" : "Images/background_dark.png"),
        fit: BoxFit.cover)
      ),
      child: Scaffold(
        drawer: AppDrawer.appdrawer,
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
          iconTheme: IconThemeData(color: Color.fromARGB(255, 250, 175, 184)),
        ),
        bottomNavigationBar: const KNavigationBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddForum()),
            );
          },
          backgroundColor: const Color.fromARGB(255, 86, 92, 208),
          child: const Icon(
            Icons.add,
            size: 40,
            color: Color.fromARGB(255, 250, 175, 184),
          ),
        ),
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SwitchHome(),
              FutureBuilder<List<Forum>>(
                future: fetchForum(),
                builder: ((context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.done:
                      return kGridView(
                        forumList: snapshot.data!,
                      );
                    case ConnectionState.waiting:
                      return const CircularProgressIndicator();
                    case ConnectionState.none:
                      return Container();
                    default:
                      return const CircularProgressIndicator();
                  }
                }),
              ),
            ],

          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}


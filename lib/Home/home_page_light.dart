import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:s_plus/AppColors/color.dart';
import 'package:s_plus/Home/home_background_decoration.dart';
import 'package:s_plus/Widgets/gridview.dart';
import 'package:s_plus/pages/addforum.dart';
import 'package:s_plus/Widgets/bottom_navigation.dart';
import 'package:s_plus/Widgets/drawer.dart';
import 'package:s_plus/Widgets/switchhome.dart';
import 'package:s_plus/theme_app/config.dart';
import 'package:s_plus/pages/forum_page.dart';
import '../Firestore/forums.dart';

class HomeBackgroundDark extends StatefulWidget {
  const HomeBackgroundDark({Key? key}) : super(key: key);

  @override
  State<HomeBackgroundDark> createState() => _HomeBackgroundDarkState();
}

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
        backgroundColor: Colors.transparent,
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
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ForumPage()));
                        },
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
      ),
    );
  }
}

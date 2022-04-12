import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:s_plus/Home/home_background_decoration.dart';
import 'package:s_plus/Widgets/gridview.dart';
import 'package:s_plus/pages/addforum.dart';
import 'package:s_plus/Widgets/bottom_navigation.dart';
import 'package:s_plus/Widgets/drawer.dart';
import 'package:s_plus/Widgets/switchhome.dart';
import 'package:s_plus/pages/forum_page.dart';
import '../Firestore/forums.dart';

class HomeBackgroundDark extends StatelessWidget {
  const HomeBackgroundDark({Key? key}) : super(key: key);

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
      decoration: LightBoxDecoration.darkBoxDecoration,
      child: Scaffold(
        drawer: AppDrawer.appdrawer,

        //APP BAR

        appBar: AppBar(
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
                  })),
            ],
          ),
        ),


        //BOTTON NAVEGATION BAR


        bottomNavigationBar: const kNavigationBar(),
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
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

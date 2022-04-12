import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:s_plus/Firestore/forums.dart';
import '../AppColors/color.dart';

class kGridView extends StatelessWidget {
  const kGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Forum> forumList = [];
    var collection = FirebaseFirestore.instance.collection("Forums");
    final forumQuerySnapshot =
        collection.get().then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        var forumData =
            Forum(name: doc["ForumName"], description: doc['ForumDescription']);
        forumList.add(forumData);
      });
    });

    return GridView.builder(
      itemCount: forumList.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          width: 10,
          padding: const EdgeInsets.all(8),
          child: Text(forumList[index].name),
          decoration: AppColor.gradient,
        );
      },
    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:s_plus/Firestore/comments.dart';
import 'package:s_plus/Widgets/comments_listview.dart';

class ForumComments extends StatelessWidget {
  final String id;
  final currentUser = FirebaseAuth.instance.currentUser;
  String name = "";
  ForumComments({Key? key, required this.id}) : super(key: key);

  Future<void> fetchUserData() async {
    final userCollection = await FirebaseFirestore.instance
        .collection("users")
        .doc(currentUser!.uid)
        .get();
    name = userCollection["name"];
  }

  @override
  Widget build(BuildContext context) {
    Future<List<Comments>> fetchComments() async {
      fetchUserData();
      List<Comments> forumComments = [];
      var collection = FirebaseFirestore.instance
          .collection("Forums")
          .doc(id)
          .collection("ForumComment").orderBy("time");
      final commentsCollection = await collection.get();
      for (final document in commentsCollection.docs) {
        var comment = Comments.fromDocumentSnapshot(doc: document);
        forumComments.add(comment);
      }
      return forumComments;
    }

    return FutureBuilder<List<Comments>>(
      future: fetchComments(),
      builder: ((context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            return ListViewComments(
              name: name,
              commentsList: snapshot.data!,
            );
          case ConnectionState.waiting:
            return const CircularProgressIndicator();
          case ConnectionState.none:
            return Container();
          default:
            return const CircularProgressIndicator();
        }
      }),
    );
  }
}

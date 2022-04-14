import 'package:cloud_firestore/cloud_firestore.dart';

class Comments {
  final String comment;
  final String user;
  final String userName;

  Comments({required this.comment, required this.user, required this.userName});

  factory Comments.fromDocumentSnapshot(
      {required DocumentSnapshot<Map<String, dynamic>> doc}) {
    return Comments(
        comment: doc.data()!["ForumComment"],
        user: doc.data()!["User"],
        userName: doc.data()!["username"]);
  }
}

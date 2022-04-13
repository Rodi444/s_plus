import 'package:cloud_firestore/cloud_firestore.dart';

class Comments {
  final String comment;
  final String user;

  Comments({required this.comment, required this.user});

  factory Comments.fromDocumentSnapshot(
      {required DocumentSnapshot<Map<String, dynamic>> doc}) {
    return Comments(
      comment: doc.data()!["ForumComment"],
      user: doc.data()!["User"],
    );
  }
}

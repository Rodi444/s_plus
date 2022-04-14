import 'package:cloud_firestore/cloud_firestore.dart';

class Forum {
  final String name;
  final String description;
  final String id;

  Forum({required this.name, required this.description, required this.id});

  factory Forum.fromDocumentSnapshot(
      {required DocumentSnapshot<Map<String, dynamic>> doc}) {
    return Forum(
      name: doc.data()!["ForumName"],
      description: doc.data()!["ForumDescription"],
      id: doc.data()!['id'],
    );
  }
}

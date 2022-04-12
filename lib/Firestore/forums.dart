import 'package:cloud_firestore/cloud_firestore.dart';

class Forum {
  final String name;
  final String description;

  Forum({required this.name, required this.description});

  factory Forum.fromDocumentSnapshot({required DocumentSnapshot<Map<String,dynamic>> doc}){
    return Forum(
        name: doc.data()!["ForumName"],
        description: doc.data()!["ForumDescription"],
    );
}
}


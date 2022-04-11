import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:s_plus/Widgets/navigationbar.dart';
import 'Widgets/button.dart';
import 'Widgets/gridview.dart';
import 'package:s_plus/Home/home_page_light.dart';
import 'package:s_plus/Login-Register/first_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  var collection = FirebaseFirestore.instance.collection("users");
  collection.doc().set(
    {
      
    }
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home: FirstPage(),

    );
  }
}

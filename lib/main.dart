import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:s_plus/Login-Register/first_page.dart';
import 'package:s_plus/theme_app/config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  var collection = FirebaseFirestore.instance.collection("users");
  collection.doc().set({});
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
                hintColor: Colors.grey,
                scaffoldBackgroundColor: Colors.transparent,
        inputDecorationTheme:
            const InputDecorationTheme(iconColor: Colors.black),
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        hintColor: Colors.grey,
        scaffoldBackgroundColor: Colors.transparent,
        brightness: Brightness.dark,
      ),
      themeMode: currentTheme.currentTheme(),
      home: const Scaffold(
        body: FirstPage(),
      ),
    );
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:s_plus/Home/home_page_light.dart';
//import 'package:s_plus/Login-Register/first_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:s_plus/theme_app/config.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

import 'package:s_plus/pages/forum_page.dart';
import 'package:s_plus/Widgets/switchhome.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  var collection = FirebaseFirestore.instance.collection("users");
  collection.doc().set(
    {
      
    }
  );
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {

@override
void initState(){
super.initState();
currentTheme.addListener(()
{
  setState(() {});
});

}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(iconColor: Colors.black),
        brightness: Brightness.light,
        ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: currentTheme.currentTheme(),
      home: const Scaffold(
        body: HomeBackgroundDark(),
      ),
    );
  }
}


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:s_plus/navigationbar.dart';
import 'button.dart';
import 'gridview.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
initialRoute: "/",

routes: {
  "/":(context) => const Navigation(),
  "/kGridView":(context) => kGridView(),
},
  ));
}

    

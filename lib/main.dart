import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:s_plus/Home/home_page_light.dart';
//import 'package:s_plus/Login-Register/first_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:s_plus/theme_app/config.dart';

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

final themeChange = iconBool;

ThemeData _lightTheme = ThemeData(
  brightness: Brightness.light,
);
ThemeData _darkTheme = ThemeData(
  brightness: Brightness.dark,
);

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
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: currentTheme.currentTheme(),
      home:Scaffold(
        
    //     appBar: AppBar(   
    //   title: Image.asset(
    //     'Images/LogoS+.png',
    //     height: 55,
    //     alignment: Alignment.center,
    //   ),
    //   actions: [
    //     IconButton(
    //       onPressed: () {
    //         setState(() {
    //           _iconBool = !_iconBool;
    //         });
    //       },
    //       icon: Icon(_iconBool? _iconDark : _iconLight)
    //     ),
    //   ],
    //   backgroundColor: Colors.transparent,
    //   centerTitle: true,
    //   elevation: 0,
    // ),
        body: HomeBackgroundDark(),
      ),
    );
  }
}

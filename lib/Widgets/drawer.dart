import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s_plus/AppColors/theme.dart';
import 'package:s_plus/pages/perfil.dart';

class DrawerApp extends StatefulWidget {
  const DrawerApp({ Key? key }) : super(key: key);

  @override
  State<DrawerApp> createState() => _DrawerAppState();
}

class _DrawerAppState extends State<DrawerApp> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: LoginBackground.gradient,
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
          DrawerHeader(child: Image.asset("lib/imagesicon/perfil.png")),
          ListTile(
            leading: const Icon(Icons.person,
            color: Colors.white),
            title: Text('PERFIL', style: GoogleFonts.lato(
            fontSize: 20,
                fontStyle: FontStyle.normal,
                color: Colors.white,
            ),),
              onTap: () {Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Perfil()));},
          ),
      ],
)
)
);
  }
}
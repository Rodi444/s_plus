
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s_plus/AppColors/theme.dart';


class AppDrawer {

static Drawer appdrawer = Drawer(
  
      child: Container(
        decoration: LoginBackground.gradient,
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        
          DrawerHeader(child: Image.asset("lib/imagesicon/perfil.png")), //aonde vai ser colocado na imagem de perfil
          ListTile(
            leading: Icon(Icons.person,
            color: Colors.white),
            title: Text('PERFIL', style: GoogleFonts.lato(
            fontSize: 20,
                fontStyle: FontStyle.normal,
                color: Colors.white,
            ),),
              onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.sunny,
            color: Colors.white),
            title: Text('LIGHT MODE', style: GoogleFonts.lato(
            fontSize: 20,
                fontStyle: FontStyle.normal,
                color: Colors.white,
            ),),
              onTap: () {},
          ),
      ],
)





)
);
}

import 'package:flutter/material.dart';
import 'package:s_plus/Home/home_background_decoration.dart';
import 'package:s_plus/Widgets/app_bar.dart';

class HomeBackgroundLight extends StatelessWidget {
  const HomeBackgroundLight({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: LightBoxDecoration.darkBoxDecoration,
      child: Scaffold(
        appBar: const PreferredSize( 
          preferredSize: Size.fromHeight(75),
           child: AppBarGlobal(),
        ),
        backgroundColor: Colors.transparent,
        body: Container(),
      ),
    );
  }
}

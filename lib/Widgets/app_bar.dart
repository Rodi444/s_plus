import 'package:flutter/material.dart';

class kAppBars extends StatefulWidget {
  const kAppBars({ Key? key }) : super(key: key);

  @override
  State<kAppBars> createState() => _kAppBarsState();
}

bool _iconBool = false;

IconData _iconLight = Icons.wb_sunny;
IconData _iconDark = Icons.nights_stay;



class _kAppBarsState extends State<kAppBars> {
  @override
  Widget build(BuildContext context) {
    return AppBar(   
      title: Image.asset(
        'Images/LogoS+.png',
        height: 55,
        alignment: Alignment.center,
      ),
      actions: [
        IconButton(
          onPressed: () {
            setState(() {
              _iconBool = !_iconBool;
            });
            
          },
          icon: Icon(_iconBool? _iconDark : _iconLight)
        ),
      ],
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
    );
  }
}

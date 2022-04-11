import 'package:flutter/material.dart';

class kAppBars extends StatelessWidget {
  const kAppBars({ Key? key }) : super(key: key);

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
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 36,
          ),
        ),
      ],
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
    );
  }
}

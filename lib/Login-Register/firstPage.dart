// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:s_plus/Login-Register/start_background.dart';

class FirstPage extends StatelessWidget {
  const FirstPage ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CustomBoxDecoration.boxDecoration,
      child: const Scaffold(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
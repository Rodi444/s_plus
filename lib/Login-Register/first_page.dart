// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:s_plus/Login-Register/login_page.dart';
import 'package:s_plus/Login-Register/register_page.dart';
import 'package:s_plus/Login-Register/start_background.dart';
import 'package:s_plus/Widgets/main_button.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bottom = MediaQuery.of(context).viewInsets.bottom;

    return Container(
      decoration: CustomBoxDecoration.boxDecoration,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'Images/Logo_Grande.png',
                height: (MediaQuery.of(context).size.height - bottom) * 0.26,
                width: MediaQuery.of(context).size.width * 0.7,
              ),
              SizedBox(
                height: (MediaQuery.of(context).size.height - bottom) * 0.2,
              ),
              MainButtonApp(
                  buttonText: 'LOGIN',
                  width: 250,
                  onpressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LoginPage()));
                  },
                  height: 60,
                  fontSize: 26),
              const SizedBox(
                height: 10,
              ),
              MainButtonApp(
                  buttonText: 'SIGN UP',
                  width: 250,
                  onpressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const RegisterPage()));
                  },
                  height: 60,
                  fontSize: 26),
            ],
          ),
        ),
      ),
    );
  }
}

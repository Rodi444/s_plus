// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:s_plus/Home/home_page_light.dart';
import 'package:s_plus/Login-Register/start_background.dart';
import 'package:s_plus/Widgets/main_button.dart';
import 'package:s_plus/Widgets/text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:email_validator/email_validator.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bottom = MediaQuery.of(context).viewInsets.bottom;
    String password = '';
    String email = '';
    bool isValid = EmailValidator.validate(email);

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
                height: (MediaQuery.of(context).size.height - bottom) * 0.3,
                width: MediaQuery.of(context).size.width * 0.7,
              ),
              SizedBox(
                height: (MediaQuery.of(context).size.height - bottom) * 0.2,
              ),
              GlobalTextField(
                  height: 50,
                  width: 280,
                  keyType: TextInputType.text,
                  fontSize: 16,
                  maxLines: 1,
                  isPassword: false,
                  hint: 'HELLO',
                  onChanged: (text) {
                    email = text;
                  }),
              const SizedBox(
                height: 10,
              ),
              GlobalTextField(
                  height: 50,
                  width: 280,
                  keyType: TextInputType.text,
                  fontSize: 16,
                  maxLines: 1,
                  isPassword: true,
                  hint: 'PASSWORD',
                  onChanged: (text) {
                    password = text;
                  }),
              const SizedBox(
                height: 10,
              ),
              MainButtonApp(
                  buttonText: 'CONFIRM',
                  width: 250,
                  onpressed: () async {
                    try {
                      // ignore: unused_local_variable
                      UserCredential userCredential = await FirebaseAuth
                          .instance
                          .signInWithEmailAndPassword(
                              email: email, password: password);
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Login Successful'),
                          );
                        },
                      );
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HomeBackgroundDark()));
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title:
                                  const Text('No user found for that email.'),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'ok'),
                                  child: const Text('ok'),
                                ),
                              ],
                            );
                          },
                        );
                      } else if (e.code == 'wrong-password') {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Wrong Password'),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'ok'),
                                  child: const Text('ok'),
                                ),
                              ],
                            );
                          },
                        );
                      } else if (password == '' || email == '') {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return const AlertDialog(
                              title:
                                  Text('Please enter the password and email!'),
                            );
                          },
                        );
                      } else if (!isValid) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return const AlertDialog(
                              title: Text('Email not Valid!!'),
                            );
                          },
                        );
                      }
                    }
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

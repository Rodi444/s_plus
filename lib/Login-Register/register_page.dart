import 'package:flutter/material.dart';
import 'package:s_plus/Login-Register/register_questions_page.dart';
import 'package:s_plus/Login-Register/start_background.dart';
import 'package:s_plus/Widgets/main_button.dart';
import 'package:s_plus/Widgets/text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:email_validator/email_validator.dart';
import 'package:s_plus/Widgets/text_field_passoword.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bottom = MediaQuery.of(context).viewInsets.bottom;
    String password = '';
    String email = '';
    String confirmPassword = '';

    return Container(
      decoration: CustomBoxDecoration.boxDecoration,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: const [],
        ),
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'Images/Logo_Grande.png',
                height: (MediaQuery.of(context).size.height - bottom) * 0.2,
                width: MediaQuery.of(context).size.width * 0.6,
              ),
              SizedBox(
                height: (MediaQuery.of(context).size.height - bottom) * 0.1,
              ),
              GlobalTextField(
                height: 50,
                width: 280,
                keyType: TextInputType.text,
                fontSize: 16,
                maxLines: 1,
                isPassword: false,
                hint: 'E-MAIL',
                onChanged: (text) {
                  email = text;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              GlobalTextFieldPassword(
                height: 50,
                width: 280,
                keyType: TextInputType.text,
                fontSize: 16,
                maxLines: 1,
                hint: 'PASSWORD',
                onChanged: (text) {
                  password = text;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              GlobalTextFieldPassword(
                  height: 50,
                  width: 280,
                  keyType: TextInputType.text,
                  fontSize: 16,
                  maxLines: 1,
                  hint: 'CONFIRM PASSWORD',
                  onChanged: (text) {
                    confirmPassword = text;
                  }),
              SizedBox(
                height: (MediaQuery.of(context).size.height - bottom) * 0.1,
              ),
              MainButtonApp(
                  buttonText: 'CONFIRM',
                  width: 250,
                  onpressed: () async {
                    if (password == confirmPassword && EmailValidator.validate(email)) {
                      try {
                        UserCredential userCredential = await FirebaseAuth
                            .instance
                            .createUserWithEmailAndPassword(
                                email: email, password: password);
                        showDialog(
                          context: context,
                          builder: (context) { 
                            return AlertDialog(
                              title: const Text('Registration Successful'),
                              actions: [
                                TextButton(
                                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterQuestionPage())),
                                child: const Text('ok'),
                              ),
                              ],
                            );
                          },
                        );
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('Weak Password'),
                                content: const Text(
                                    'The password provided is too weak.'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'ok'),
                                    child: const Text('ok'),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                        if (password == '' ||
                            email == '' ||
                            confirmPassword == '') {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return const AlertDialog(
                                title: Text(
                                    'Please enter the password and email!'),
                              );
                            },
                          );
                        } else if (e.code == 'email-already-in-use') {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('Email already in use'),
                                  content: const Text(
                                      'The account already exists for that email.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'ok'),
                                      child: const Text('ok'),
                                    ),
                                  ],
                                );
                              });
                        } else if (!EmailValidator.validate(email)) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return const AlertDialog(
                                title: Text('Email not Valid!!'),
                              );
                            },
                          );
                        }
                      } catch (e) {
                        print(e);
                      }
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Password Error'),
                            content:
                                const Text('Passwords inputed are different!'),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'ok'),
                                child: const Text('ok'),
                              ),
                            ],
                          );
                        },
                      );
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

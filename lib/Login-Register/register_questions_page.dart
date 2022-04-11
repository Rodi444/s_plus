import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:s_plus/Login-Register/first_page.dart';
import 'package:s_plus/Login-Register/start_background.dart';
import 'package:s_plus/Widgets/main_button.dart';
import 'package:s_plus/Widgets/text_field.dart';

class RegisterQuestionPage extends StatelessWidget {
  const RegisterQuestionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bottom = MediaQuery.of(context).viewInsets.bottom;
    String name = '';
    String course = '';
    String university = '';
    String city = '';
    int age = 0;
    var collection = FirebaseFirestore.instance.collection("users");
    var currentUser = FirebaseAuth.instance.currentUser;

    Future<QuerySnapshot<Map<String, dynamic>>> getData() async {
      // Get docs from collection reference
      final querySnapshot = await collection.get();
      return querySnapshot;
    }

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
                height: (MediaQuery.of(context).size.height - bottom) * 0.15,
                width: MediaQuery.of(context).size.width * 0.3,
              ),
              SizedBox(
                height: (MediaQuery.of(context).size.height - bottom) * 0.04,
              ),
              GlobalTextField(
                height: 50,
                width: 280,
                keyType: TextInputType.text,
                fontSize: 16,
                maxLines: 1,
                isPassword: false,
                hint: 'NAME',
                onChanged: (text) {
                  name = text;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              GlobalTextField(
                  height: 50,
                  width: 280,
                  keyType: TextInputType.text,
                  fontSize: 16,
                  maxLines: 1,
                  isPassword: false,
                  hint: 'COURSE',
                  onChanged: (text) {
                    course = text;
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
                  isPassword: false,
                  hint: 'UNIVERSITY',
                  onChanged: (text) {
                    university = text;
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
                  isPassword: false,
                  hint: 'CITY',
                  onChanged: (text) {
                    city = text;
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
                  isPassword: false,
                  hint: 'AGE',
                  onChanged: (text) {
                    age = int.parse(text);
                  }),
              SizedBox(
                height: (MediaQuery.of(context).size.height - bottom) * 0.04,
              ),
              MainButtonApp(
                  buttonText: 'CONFIRM',
                  width: 250,
                  onpressed: () async {
                    if (currentUser!.uid != null || name != '') {
                      collection.doc(currentUser.uid).set(
                        {
                          'name': name,
                          'course': course,
                          'university': university,
                          'city': city,
                          'age': age
                        },
                      ).then(
                        (value) => Navigator.of(context)
                            .push(MaterialPageRoute(
                                builder: (context) => const FirstPage()))
                            .catchError(
                          (error) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title:
                                      const Text('Registration Unssucessfull'),
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
                          },
                        ),
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

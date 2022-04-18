
import 'package:flutter/material.dart';
import 'package:s_plus/Login-Register/start_background.dart';
import 'package:s_plus/Widgets/main_button.dart';
import 'package:s_plus/Widgets/text_field.dart';
import 'package:s_plus/Widgets/text_field_passoword.dart';

class Perfil extends StatefulWidget {
  const Perfil({ Key? key }) : super(key: key);

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CustomBoxDecoration.boxDecoration,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: const [],),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'Images/Logo_Grande.png',
                height: 90,
                width: 90,
              ),
              const SizedBox(
                height: 40,
              ),
              GlobalTextField(
                height: 50,
                width: 280,
                keyType: TextInputType.text,
                fontSize: 16,
                maxLines: 1,
                isPassword: false,
                hint: 'LOGIN',
                onChanged: (text) {
                },
              ),
              const SizedBox(
                height: 12,
              ),
              GlobalTextFieldPassword(
                height: 50,
                width: 280,
                keyType: TextInputType.text,
                fontSize: 16,
                maxLines: 1,
                hint: 'PASSWORD',
                onChanged: (text) {
                },
              ),
              const SizedBox(
                height: 12,
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
                },
              ),
              const SizedBox(
                height: 12,
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
                  }),
              const SizedBox(
                height: 12,
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
                  }),
              const SizedBox(
                height: 12,
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
                
                  }),
              const SizedBox(
                height: 12,
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
                    
                  }),
              const SizedBox(
                height: 12,
              ),
              MainButtonApp(
                height: 60,
                fontSize: 20,
                  buttonText: 'CONFIRM',
                  width: 250,
                  onpressed: ()  {}
                  )
              ]
          )
          ),
      ),
    );
  }
}
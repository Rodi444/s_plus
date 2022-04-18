
import 'package:flutter/material.dart';
import 'package:s_plus/Login-Register/start_background.dart';
import 'package:s_plus/Widgets/main_button.dart';
import 'package:s_plus/Widgets/text_field.dart';

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
                height: 130,
                width: 130,
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
                hint: 'NAME',
                onChanged: (text) {
                },
              ),
              const SizedBox(
                height: 20,
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
                height: 20,
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
                height: 20,
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
                height: 20,
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
                height: 20,
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
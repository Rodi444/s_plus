import 'package:flutter/material.dart';
import 'package:s_plus/Home/home_background_decoration.dart';
import 'package:s_plus/Home/home_page_light.dart';
import 'package:s_plus/Widgets/bottom_navigation.dart';
import 'package:s_plus/Widgets/text_fields_multipl.dart';
import 'package:s_plus/Widgets/title_text.dart';
import 'package:s_plus/theme_app/config.dart';


class AddForum extends StatefulWidget {
  const AddForum({ Key? key }) : super(key: key);

  @override
  State<AddForum> createState() => _AddForumState();
}

class _AddForumState extends State<AddForum> {
  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: LightBoxDecoration.background,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:   <Widget>[
            const Padding(padding: EdgeInsets.all(30)),
            TitleText(tostring: "NEW FORUM", fontsize: 25),
             TextFieldBox(hint: "NAME",vertical: 10,),
            const SizedBox(height: 10),
             TextFieldBox(hint: "DESCRIPTION",vertical: 130,)
          ],
        ),
        bottomNavigationBar: const KNavigationBar(),
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.pop(context);
  },
  backgroundColor: const Color.fromARGB(255, 86, 92, 208),
        child: const Icon(Icons.add, size: 40,),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        ),
        );

  }
}
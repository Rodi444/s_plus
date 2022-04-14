import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:s_plus/Firestore/comments.dart';
import 'package:s_plus/Firestore/forums.dart';
import 'package:s_plus/Home/home_background_decoration.dart';
import 'package:s_plus/Widgets/title_text.dart';
import '../Home/home_page_light.dart';
import '../Widgets/bottom_navigation.dart';
import '../Widgets/main_button.dart';
import '../Widgets/text_field.dart';

class AddComment extends StatelessWidget {
  final String id;
  const AddComment({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Forum forum;
    List<Comments> forumComments = [];
    String forumComment = '';
    var bottom = MediaQuery.of(context).viewInsets.bottom;
    var currentUser = FirebaseAuth.instance.currentUser;
    var collection = FirebaseFirestore.instance
        .collection("Forums")
        .doc(id)
        .collection("ForumComment");
    final forumQuerySnapshot = collection.get().then(
      (QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach(
          (doc) {
            var forumData =
                Comments(comment: doc["ForumComment"], user: doc['User']);
            forumComments.add(forumData);
          },
        );
      },
    );

    return Container(
      alignment: Alignment.center,
      decoration: LightBoxDecoration.background,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Column(
              children: [
                const Padding(padding: EdgeInsets.all(30)),
                const TitleText(tostring: "POST", fontsize: 25),
                SizedBox(
                  height: (MediaQuery.of(context).size.height - bottom) * 0.005,
                ),
                const SizedBox(height: 10),
                GlobalTextField(
                  hint: "COMMENT",
                  height: 320,
                  fontSize: 16,
                  isPassword: false,
                  keyType: TextInputType.multiline,
                  maxLines: 20,
                  width: 350,
                  onChanged: (text) {
                    forumComment = text;
                  },
                ),
                SizedBox(
                  height:
                      (MediaQuery.of(context).size.height - bottom * 2) * 0.10,
                ),
                MainButtonApp(
                    buttonText: 'CONFIRM',
                    width: 250,
                    onpressed: () async {
                      if (currentUser?.uid != null || forumComment != '') {
                        await collection.doc().set(
                          {
                            'ForumComment': forumComment,
                            'User': currentUser?.uid
                          },
                        );
                        Navigator.pop(context);
                      }
                    },
                    height: 60,
                    fontSize: 26),
              ],
            )
          ],
        ),
        backgroundColor: const Color.fromARGB(0, 86, 92, 208),
        bottomNavigationBar: const KNavigationBar(),
      ),
    );
  }
}

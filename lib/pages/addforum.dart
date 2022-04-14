import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:s_plus/Firestore/forums.dart';
import 'package:s_plus/Home/home_page_light.dart';
import 'package:s_plus/Widgets/bottom_navigation.dart';
import 'package:s_plus/Widgets/main_button.dart';
import 'package:s_plus/Widgets/text_field.dart';
import 'package:s_plus/Widgets/title_text.dart';


class AddForum extends StatefulWidget {
  const AddForum({ Key? key }) : super(key: key);

  @override
  State<AddForum> createState() => _AddForumState();
}

class _AddForumState extends State<AddForum> {
  @override
  Widget build(BuildContext context) {
    String forumName = '';
    String forumDescription = '';
    List<Forum> forumList = [];
    var bottom = MediaQuery.of(context).viewInsets.bottom;
    var collection = FirebaseFirestore.instance.collection("Forums");
    var currentUser = FirebaseAuth.instance.currentUser;
    final forumQuerySnapshot =
        collection.get().then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        var forumData =
            Forum(name: doc["ForumName"], description: doc['ForumDescription'], id: doc['id']);
        forumList.add(forumData);
      });
    });
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(iconBool ? "Images/background_light.png" : "Images/background_dark.png"),
        fit: BoxFit.cover)
      ),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Column(
              children: [
                const Padding(padding: EdgeInsets.all(30)),
                const TitleText(tostring: "NEW FORUM", fontsize: 25),
                SizedBox(
                  height: (MediaQuery.of(context).size.height - bottom) * 0.02,
                ),
                GlobalTextField(
                  hint: "NAME",
                  height: 50,
                  fontSize: 16,
                  isPassword: false,
                  keyType: TextInputType.multiline,
                  maxLines: 1,
                  width: 350,
                  onChanged: (text) {
                    forumName = text;
                  },
                ),
                SizedBox(
                  height: (MediaQuery.of(context).size.height - bottom) * 0.005,
                ),
                const SizedBox(height: 10),
                GlobalTextField(
                  hint: "DESCRIPTION",
                  height: 200,
                  fontSize: 16,
                  isPassword: false,
                  keyType: TextInputType.multiline,
                  maxLines: 20,
                  width: 350,
                  onChanged: (text) {
                    forumDescription = text;
                  },
                ),
                SizedBox(
                  height:
                      (MediaQuery.of(context).size.height - bottom * 2) * 0.25,
                ),
                MainButtonApp(
                    buttonText: 'CONFIRM',
                    width: 250,
                    onpressed: () async {
                      if (currentUser?.uid != null ||
                          forumName != '' ||
                          forumDescription != '') {
                        var doc = collection.doc();
                        doc.set(
                          {
                            'ForumName': forumName,
                            'ForumDescription': forumDescription,
                            'owner_id': currentUser?.uid,
                          },
                        ).then(
                          (value) => doc.update(
                           {
                             'id': doc.id
                           } 
                          ).then((value) => Navigator.of(context)
                              .push(MaterialPageRoute(
                                  builder: (context) =>
                                      const HomeBackgroundDark())))
                              .catchError(
                            (error) {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text(
                                        'Forum Creation Successfull'),
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
            )
          ],
        ),
        bottomNavigationBar: const KNavigationBar(),
      ),
    );
  }
}

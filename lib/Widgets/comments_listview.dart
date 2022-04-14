import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:s_plus/Firestore/comments.dart';
import 'package:s_plus/Firestore/forums.dart';
import '../AppColors/color.dart';
import '../pages/forum_page.dart';

class ListViewComments extends StatelessWidget {
  final List<Comments> commentsList;
  final FirebaseAuth auth = FirebaseAuth.instance;
  final String name;

  ListViewComments({Key? key, required this.commentsList, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(8),
      shrinkWrap: true,
      itemCount: commentsList.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {},
          child: Column(
            children: [
              SizedBox(height: (MediaQuery.of(context).size.height) * 0.02),
              Container(
                width: (MediaQuery.of(context).size.width) * 0.9,
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        commentsList[index].userName,
                        style: const TextStyle(fontSize: 12),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                        height: (MediaQuery.of(context).size.height) * 0.01),
                    Text(
                      commentsList[index].comment,
                      style: const TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                decoration: AppColor.gradient,
              ),
            ],
          ),
        );
      },
    );
  }
}

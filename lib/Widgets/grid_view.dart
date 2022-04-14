import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:s_plus/Firestore/forums.dart';
import '../AppColors/color.dart';
import '../pages/forum_page.dart';

class kGridView extends StatelessWidget {
  final List<Forum> forumList;
  const kGridView({Key? key, required this.forumList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(8),
      shrinkWrap: true,
      itemCount: forumList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1.7),
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return ForumPage(forum: forumList[index]);
                },
              ),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                forumList[index].name.toUpperCase(),
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),
              ),
            ),
            decoration: AppColor.gradient,
          ),
        );
      },
    );
  }
}

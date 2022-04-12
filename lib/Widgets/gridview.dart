import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:s_plus/Firestore/forums.dart';
import '../AppColors/color.dart';

class kGridView extends StatelessWidget {
  final void Function() onTap;
  final List<Forum> forumList;
  const kGridView({Key? key, required this.forumList, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      shrinkWrap: true,
      itemCount: forumList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 16),
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: onTap,
          child: Container(
            height: 50,
            width: 10,
            padding: const EdgeInsets.all(8),
            child: Text(forumList[index].name),
            decoration: AppColor.gradient,
          ),
        );
      },
    );
  }
}

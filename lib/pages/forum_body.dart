import 'package:flutter/material.dart';
import 'package:s_plus/AppColors/color.dart';
import 'package:s_plus/Firestore/forums.dart';
import 'package:s_plus/Home/home_background_decoration.dart';

class ForumBody extends StatelessWidget {
  final String name;
  final String description;
  final String id;
  const ForumBody(
      {Key? key,
      required this.name,
      required this.description,
      required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bottom = MediaQuery.of(context).viewInsets.bottom;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        alignment: Alignment.center,
        height: (MediaQuery.of(context).size.height - bottom) * 0.3,
        width: (MediaQuery.of(context).size.width) * 0.9,
        decoration: AppColor.gradient,
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    //Adicinar nome dos Forums
                    name,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Forum Description:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    //Inserir descricao do Forum
                    description,
                    style: const TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

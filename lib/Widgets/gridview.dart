import 'package:flutter/material.dart';
import '../AppColors/color.dart';

class kGridView extends StatelessWidget {
  const kGridView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        childAspectRatio: (15 / 5),    
  primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  crossAxisCount: 1,
  children: <Widget>[
    Container(
      height: 50,
      width: 10,
      padding: const EdgeInsets.all(8),
      child: const Text("He'd have you all unravel at the"),
      decoration: AppColor.gradient,
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Heed not the rabble'),
      decoration: AppColor.gradient,
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Sound of screams but the'),
      decoration:AppColor.gradient,
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Who scream'),
      decoration: AppColor.gradient,
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Revolution is coming...'),
      decoration: AppColor.gradient,
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Revolution, they...'),
      decoration: AppColor.gradient,
    ),
  ],
);
  }
}
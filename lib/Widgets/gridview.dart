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
      decoration: BoxDecoration(
          boxShadow:const [
            BoxShadow(
                color: Color.fromARGB(40, 0, 0, 0), offset: Offset(0, 4), blurRadius: 4.0)],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            stops: const [0.0, 1.0],
            colors: [
              AppColor.primarycolor.withOpacity(1.0),
              AppColor.secondcolor.withOpacity(0.5),
            ],
          ),
          color: AppColor.primarycolor,
          borderRadius: BorderRadius.circular(10),
        ),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Heed not the rabble'),
      decoration: BoxDecoration(
          boxShadow:const [
            BoxShadow(
                color: Color.fromARGB(40, 0, 0, 0), offset: Offset(0, 4), blurRadius: 4.0)],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            stops: const [0.0, 1.0],
            colors: [
              AppColor.primarycolor.withOpacity(1.0),
              AppColor.secondcolor.withOpacity(0.5),
            ],
          ),
          color: AppColor.primarycolor,
          borderRadius: BorderRadius.circular(10),
        ),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Sound of screams but the'),
     
      decoration: BoxDecoration(
          boxShadow:const [
            BoxShadow(
                color: Color.fromARGB(40, 0, 0, 0), offset: Offset(0, 4), blurRadius: 4.0)],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            stops: const [0.0, 1.0],
            colors: [
              AppColor.primarycolor.withOpacity(1.0),
              AppColor.secondcolor.withOpacity(0.5),
            ],
          ),
          color: AppColor.primarycolor,
          borderRadius: BorderRadius.circular(10),
        ),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Who scream'),
      decoration: BoxDecoration(
          boxShadow:const [
            BoxShadow(
                color: Color.fromARGB(40, 0, 0, 0), offset: Offset(0, 4), blurRadius: 4.0)],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            stops: const [0.0, 1.0],
            colors: [
              AppColor.primarycolor.withOpacity(1.0),
              AppColor.secondcolor.withOpacity(0.5),
            ],
          ),
          color: AppColor.primarycolor,
          borderRadius: BorderRadius.circular(10),
        ),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Revolution is coming...'),
      decoration: BoxDecoration(
          boxShadow:const [
            BoxShadow(
                color: Color.fromARGB(40, 0, 0, 0), offset: Offset(0, 4), blurRadius: 4.0)],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            stops: const [0.0, 1.0],
            colors: [
              AppColor.primarycolor.withOpacity(1.0),
              AppColor.secondcolor.withOpacity(0.5),
            ],
          ),
          color: AppColor.primarycolor,
          borderRadius: BorderRadius.circular(10),
        ),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Revolution, they...'),
      decoration: BoxDecoration(
          boxShadow:const [
            BoxShadow(
                color: Color.fromARGB(40, 0, 0, 0), offset: Offset(0, 4), blurRadius: 4.0)],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            stops: const [0.0, 1.0],
            colors: [
              AppColor.primarycolor.withOpacity(1.0),
              AppColor.secondcolor.withOpacity(0.5),
            ],
          ),
          color: AppColor.primarycolor,
          borderRadius: BorderRadius.circular(10),
        ),
    ),
  ],
);
  }
}
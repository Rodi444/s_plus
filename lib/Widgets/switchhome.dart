import 'package:flutter/material.dart';
import 'package:s_plus/AppColors/color.dart';


class SwitchHome{
  static Row switchhome = Row(children: [
    Expanded(child: ElevatedButton(onPressed: (){},
    style: ButtonStyle(
      minimumSize: MaterialStateProperty.all(Size(20, 30)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              backgroundColor:
                  MaterialStateProperty.all(Color.fromARGB(125, 86, 92, 208)),
              // elevation: MaterialStateProperty.all(3),
              shadowColor:
                  MaterialStateProperty.all(Color.fromARGB(125, 86, 92, 208)),
                  ),
                  child:Text('HOME', textAlign: TextAlign.center),
    ),
    
    
    
    
    ),
    
    Expanded(child: ElevatedButton(onPressed: (){},
    style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(Size(20, 30)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              backgroundColor:
                  MaterialStateProperty.all(Color.fromARGB(125, 86, 92, 208)),
              // elevation: MaterialStateProperty.all(3),
              shadowColor:
                  MaterialStateProperty.all(Color.fromARGB(125, 86, 92, 208)),
                  ),
                  child:Text('SUBSCRIBED', textAlign: TextAlign.center),
    ),
    
    
    
    
    
    
      )
    
  ]
  );
}
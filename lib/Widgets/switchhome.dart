import 'package:flutter/material.dart';
import 'package:s_plus/Home/home_page_light.dart';
import 'package:s_plus/pages/subscribeds_light.dart';


class SwitchHome extends StatelessWidget {
  const SwitchHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
    Expanded(child: ElevatedButton(onPressed: (){Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomeBackgroundDark()),
  );},
    style: ButtonStyle(
      minimumSize: MaterialStateProperty.all(const Size(20, 30)),
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
                  child:const Text('HOME', textAlign: TextAlign.center),
    ),
    ),
    Expanded(child: ElevatedButton(onPressed: (){Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SubscribedDark()),
  );},
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
}
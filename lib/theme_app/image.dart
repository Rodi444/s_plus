import 'package:flutter/material.dart';

class Myimage with ChangeNotifier {

static bool _image = true;

AssetImage currentImage(){
return _image ? const AssetImage("Images/background_dark.png") : const AssetImage("Images/background_light.png");
}

void switchImage(){
  _image = !_image;
  notifyListeners();
}
}
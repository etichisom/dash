import 'package:flutter/cupertino.dart';

class Pagecontrol extends ChangeNotifier{
  int add =0;

  int getadd(){
    return add;
  }
  setadd(int a){
    add=a;
    notifyListeners();
  }
}
import 'package:flutter/cupertino.dart';
import 'package:work/model/projectm.dart';

class Pagecontrol extends ChangeNotifier{
  int add =0;
  int job = 0;
  int index = 0;
  Mproject project = p[1] ;
  int getadd(){
    return add;
  }
  setadd(int a){
    add=a;
    notifyListeners();
  }
  int getindex(){
    return index;
  }
  setindex(int a){
    index=a;
    notifyListeners();
  }
  setj(int a){
    job=a;
    notifyListeners();
  }
  setp(Mproject a){
    project=a;
    notifyListeners();
  }
}
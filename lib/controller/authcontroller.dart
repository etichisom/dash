

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class Authcontrol extends ChangeNotifier{
  var auth = 0;
  var s = 0.obs;
  authing(int au) {
   auth =au;
   notifyListeners();
  }

}
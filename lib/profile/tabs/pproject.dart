import 'package:flutter/cupertino.dart';
import 'package:work/model/pm.dart';
import 'package:work/model/projectm.dart';
import 'package:work/profile/componet1/pmcard.dart';
import 'package:work/profile/profilecard.dart';
import 'package:work/project/projectcard.dart';
import 'package:work/controller/pagecon.dart';

Widget ptab (Size size, Pagecontrol pp ){
  return  GridView(
    gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 300,
      mainAxisSpacing: 10,
      childAspectRatio: 4/5,
      crossAxisSpacing: 10,
    ) ,
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    children:pmp.map((e) => pmcard(size,e,pp) ).toList(),
  );
}
import 'package:flutter/cupertino.dart';
import 'package:work/model/projectm.dart';
import 'package:work/project/projectcard.dart';
import 'package:work/controller/pagecon.dart';

Widget savedtab (Size size, Pagecontrol pp,BuildContext context ){
  return  GridView(
    gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 300,
      mainAxisSpacing: 10,
      childAspectRatio: 4/5,
      crossAxisSpacing: 10,
    ) ,
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    children:p.map((e) => Pcard(size,e,pp,context) ).toList(),
  );
}
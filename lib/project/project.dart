import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menu_button/menu_button.dart';
import 'package:provider/provider.dart';
import 'package:work/addproject/addp.dart';
import 'package:work/component/cart.dart';
import 'package:work/component/tag.dart';
import 'package:work/model/projectm.dart';
import 'package:work/project/cartsearch.dart';
import 'package:work/project/header.dart';
import 'package:work/project/projectcard.dart';
import 'package:work/controller/pagecon.dart';

class Project extends StatefulWidget {
  @override
  _ProjectState createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  Size size;
  List<String> keys = <String>[
    'New project',
    'Medium',
  ];
  List<String> plat = <String>[
    'Platform',
    'Medium',
  ];
  Pagecontrol pp;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    pp = Provider.of<Pagecontrol>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PHead(size,pp),
            SizedBox(height: 10,),
            Carts(size),
            SizedBox(height: 10,),
            Cart(size, context),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50),
              child: Text('Featured Projects',
                style:GoogleFonts.lato(fontSize:25,color: Colors.blue[700],fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50),
              child: Row(
                children: [
                  Text('Sort By',
                    style:GoogleFonts.lato(fontSize:17,fontWeight: FontWeight.bold),),
                  SizedBox(width: 15,),
                  menu(context, 'New Projects'),
                  SizedBox(width: 15,),
                  menu(context, 'Platforms'),
                  SizedBox(width: 15,),
                  menu(context, 'Videos'),

                ],
              ),
            ),
            SizedBox(height: 20,),
            tag(size),
            SizedBox(height: 20,),
            GridView(
              gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                mainAxisSpacing: 10,
                childAspectRatio: 4/4.5,
                crossAxisSpacing: 10,
              ) ,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children:p.map((e) => Pcard(size,e) ).toList(),
            )
          ],
        ),
      ),
    );
  }
  Widget menu(BuildContext context, String string){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width:size.width/7,
        height: 38,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.black)
        ),
        child: TextField(
          decoration: InputDecoration(
              fillColor: Colors.white,
              suffixIcon: Icon(Icons.keyboard_arrow_down_sharp),
              filled: true,
              border: InputBorder.none,
              hintStyle: TextStyle(fontSize: 13),
              hintText:string
          ),
        ),
      ),
    );
  }
}

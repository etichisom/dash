import 'dart:html';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:work/page/body.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Size size;
  int currentindex =0;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
     body: SafeArea(
         child: Column(
           children: [
             PhysicalModel(
               elevation: 3,
               color:Colors.black,
               child: Container(
                 color: Colors.white,
                 height:60,
                 width: size.width,
                 child: Center(
                   child: Padding(
                     padding: const EdgeInsets.all(0.0),
                     child: Row(
                       children: [
                         SizedBox(width: 50,),
                         Icon(FeatherIcons.chrome,color: Colors.blue,),
                         SizedBox(width: 5,),
                         AutoSizeText(
                           'ExploriCa\nInnovations',
                           style: TextStyle(fontSize: 12,color: Colors.blue[300]),
                           maxLines: 2,
                         ),
                         SizedBox(width: 50,),
                         option(context, 0,'Project',Icon(Icons.settings,color: Colors.grey[700],size: 19,)),
                         SizedBox(width: 15,),
                         option(context, 1,'Explore',Icon(Icons.flight_takeoff,color: Colors.grey[700],size: 19,)),
                         SizedBox(width: 15,),
                         option(context, 2,'Blogs',Icon(Icons.my_library_books_outlined,color: Colors.grey[700],size: 19,)),
                         SizedBox(width: 15,),
                         option(context, 3,'job',Icon(Icons.work,color: Colors.grey[700],size: 19,)),
                         SizedBox(width: 15,),
                         option(context, 4,'learn',Icon(Icons.menu_book,color: Colors.grey[700],size: 19,)),
                         Expanded(child: Container()),
                         FlatButton.icon(icon: Icon(Icons.add_circle,color: Colors.blue,),
                           onPressed: (){},
                           label: Text('Add project',style: GoogleFonts.lato(color: Colors.lightBlue),),),
                         SizedBox(width: 13,),
                         notif(context,Icon(Icons.notifications,size: 27,),7),
                         SizedBox(width: 13,),
                         notif(context,Icon(Icons.email,size: 27,),17),
                         SizedBox(width: 5,),
                         CircleAvatar(
                           radius: 15,
                           backgroundImage: AssetImage('assets/profile 1.png'),
                         ),
                         SizedBox(width: 30,),
                       ],
                     ),
                   ),
                 ),
               ),
             ),
             Expanded(
               child: Container(
                   height: size.height,
                   child: Body()),
             ),
           ],
         )
     ),
    );
  }
   Widget option(BuildContext context, int index, String name, Icon icon){
      return InkWell(
        onTap: (){
          setState(() {
            currentindex=index;
          });
        },
        child: Container(
          height:60,
          child: Column(
            children: [
              Expanded(child: Container()),
              Row(
                children: [
                  icon,
                  AutoSizeText(
                    name,
                    style: TextStyle(color: Colors.grey[500]),
                    maxLines: 2,
                  )
                ],
              ),
              Expanded(child: Container()),
             Container(width:60 ,
             height: 3,
             color:currentindex==index?Colors.blue:Colors.transparent,)
            ],
          ),
        ),
      );
   }

 Widget notif(BuildContext context,Icon icon,int i) {
    return InkWell(
      onTap: (){},
      child: Container(
        width: 27,
        height: 50,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 27,
              height: 50,
            ),
            Positioned(
               right: 3,
                child: icon),
            Positioned(
              right: 3,
              child: CircleAvatar(
                radius: 8,
                backgroundColor: Colors.red,
                child: Text(i.toString(),style: TextStyle(fontSize: 10),),
              ),
            ),

          ],
        ),
      ),
    );
 }
}

import 'dart:html';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:work/page/body.dart';
import 'package:work/page/job.dart';
List page = [ Job(), Body(), Body(), Job(), Body()];
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Size size;
  int currentindex =0;
  List hover = [ false, false, false, false, false];

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
                        Container(
                          height: 50,
                          width: 50,
                          decoration:BoxDecoration(
                            color: Colors.yellow,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage('img/logo.png'),
                                  fit: BoxFit.scaleDown
                              )
                          ),
                        ),
                         SizedBox(width: 5,),
                         AutoSizeText(
                           'ExploriCa\nInnovations',
                           style: GoogleFonts.ubuntu(
                             fontSize: 13,color: Colors.blue[300],
                             fontWeight: FontWeight.bold
                           ),
                           maxLines: 2,
                         ),
                         SizedBox(width: 50,),
                         option(context, 0,'Project',Icon(Icons.settings,size: 19,
                             color:currentindex==0?Colors.blue:
                             hover[0]?Colors.green:Colors.black)),
                         SizedBox(width: 15,),
                         option(context, 1,'Explore',Icon(Icons.flight_takeoff,size: 19,
                             color:currentindex==1?Colors.blue:
                             hover[1]?Colors.green:Colors.black)),
                         SizedBox(width: 15,),
                         option(context, 2,'Blogs',Icon(Icons.my_library_books_outlined,size: 19,
                             color:currentindex==2?Colors.blue:
                             hover[2]?Colors.green:Colors.black)),
                         SizedBox(width: 15,),
                         option(context, 3,'job',Icon(Icons.work,size: 19,
                             color:currentindex==3?Colors.blue:
                             hover[3]?Colors.green:Colors.black)),
                         SizedBox(width: 15,),
                         option(context, 4,'learn',Icon(Icons.menu_book,size: 19,
                             color:currentindex==4?Colors.blue:
                             hover[4]?Colors.green:Colors.black)),
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
                   child:page[currentindex]),
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
        onHover: (v){
          setState(() {
            hover[index] = v;
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
                    style: TextStyle(color:currentindex==index?Colors.blue:
                    hover[index]?Colors.green:Colors.black),
                    maxLines: 2,
                  )
                ],
              ),
              Expanded(child: Container()),
             Container(width:60 ,
             height: 3,
             color:currentindex==index?Colors.blue:hover[index]?Colors.green[200].withOpacity(0.5):Colors.transparent,)
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
                child: Text(i.toString(),style: TextStyle(fontSize: 10,),),
              ),
            ),

          ],
        ),
      ),
    );
 }
}

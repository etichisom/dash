

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:work/model/user.dart';
Widget t(String t){
  return  AutoSizeText(
    t ,
    style:GoogleFonts.roboto(fontSize: 16,color: Colors.black,),
  );
}
Widget fieldicon(String s){
  return Container(
    child: TextField(
      decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          hintText: s,
          suffixIcon: Icon(Icons.menu),
          fillColor: Colors.grey[200]
      ),
    ),
  );
}
Widget field(String s){
  return Container(
    child: TextField(
      decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          hintText: s,
          fillColor: Colors.grey[200]
      ),
    ),
  );
}
Widget bigfield(String v,Color colors,double h ) {
  return Container(
    height: h,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 40,
          color: Colors.grey[400],
          child: Row(
            children: [
              SizedBox(width: 10,),
              Text('Normal'),
              SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.keyboard_arrow_up,size: 17),
                  SizedBox(height: 5,),
                  Icon(Icons.keyboard_arrow_down_sharp,size: 17,),
                ],
              ),
              SizedBox(width: 25,),
              attr('B'),
              SizedBox(width: 10,),
              attr('I'),
              SizedBox(width: 10,),
              attr('u'),
              SizedBox(width: 10,),
              Icon(Icons.format_align_left,size: 17,),
              SizedBox(width: 10,),
              Icon(Icons.format_align_right,size: 17,),
            ],
          ),
        ),
        Expanded(
          child: Container(
              color: colors,
              child:TextField(
                maxLines:200,
                decoration: InputDecoration(
                  hintText: v,
                  border: InputBorder.none,
                  filled: true,

                ),
              )
          ),
        )
      ],
    ),
  );
}
Widget attr(String s){
  return Text(s,style:GoogleFonts.roboto(fontWeight: FontWeight.bold,fontSize: 18),);
}
Widget text(String s){
  return Text(s,style:GoogleFonts.roboto(fontSize: 16,color: Colors.blue),);
}
   Widget chipp(List l){
     return ListView(
       scrollDirection: Axis.horizontal,
       children: l.map((ek){
         return Padding(
           padding: const EdgeInsets.all(3.0),
           child: Card(
             elevation: 1,
             child: Container(
               color: Colors.grey[300],
               child: Padding(
                 padding: const EdgeInsets.all(2.0),
                 child: Text(ek,style: TextStyle(fontSize: 12),)
               ),
             ),
           ),
         );
       }).toList(),
     );
  }

   Widget listiles(User user){
     return Padding(
       padding: const EdgeInsets.all(5.0),
       child: Container(
         color: Colors.grey[200],
         child: Padding(
           padding: const EdgeInsets.all(4.0),
           child: Row(
             children: [
               CircleAvatar(
                 radius: 13,
                 backgroundImage: AssetImage(user.assest),
               ),
               SizedBox(width: 9,),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(user.name,style: GoogleFonts.roboto(
                       fontSize: 13,color: Colors.blue
                   ),),
                   SizedBox(height: 2,),
                   Text(user.status,style:TextStyle(fontSize: 12)),
                 ],
               ),
               Expanded(child: Container()),
               Expanded(child: Container()),
               FlatButton.icon(onPressed: (){},
                   icon:Icon(Icons.add,size: 15,color: Colors.blue,),
                   label:Text('Follow',style:TextStyle(fontSize: 12,color: Colors.blue))
               )
             ],
           ),
         ),
       ),
     );
   }
Widget n(String s){
  return  Text(s,style: GoogleFonts.roboto(
      fontSize: 10,color: Colors.blue
  ),);
}
Widget lp(String s){
  return  Text(s,style: GoogleFonts.roboto(
    fontSize: 10,
  ),);
}
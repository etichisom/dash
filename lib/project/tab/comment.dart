import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:markdown_editable_textinput/markdown_text_input.dart';

class Comment extends StatefulWidget {
  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  String dec = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30,right: 200,top: 10),
      child: Column(
          children: [

          SizedBox(height: 10,),
           Row(
         mainAxisAlignment: MainAxisAlignment.end,
         children: [
           OutlineButton(onPressed: (){},
             color: Colors.blue,
             shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(8)
             ),
             child: Text('Reset',style: TextStyle(color: Colors.blue),),),
           SizedBox(width: 8,),
           RaisedButton(onPressed: (){},
             color: Colors.blue,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(8)
             ),
           child: Padding(
             padding: const EdgeInsets.all(5.0),
             child: Text('Post Comment',style: TextStyle(color: Colors.white),),
           ),),
         ],
       ),
       SizedBox(height: 30,),
       Row(
         children: [
           Text('Comments',style:GoogleFonts.roboto(color: Colors.blue[900],fontSize: 18),),
           SizedBox(width: 8,),
           Text('224',style: TextStyle(color: Colors.grey),),
         ],
       ),
   ],
      ),
    );
  }
}

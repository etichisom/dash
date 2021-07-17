import 'package:flutter/cupertino.dart';

import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:work/controller/pagecon.dart';
import 'package:work/model/livem.dart';
import 'package:work/model/pm.dart';
import 'package:work/model/projectm.dart';
import 'package:work/model/up.dart';

Widget pmcard(Size size, pm e,Pagecontrol p){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: (){

      },
      child: Card(
        elevation: 2,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(e.assest),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Expanded(
                            child: Container(
                              child: Stack(
                                children: [
                                  Positioned(
                                      top: 5,
                                      right: 5,
                                      child:e.isvideo?Icon(Icons.video_call_outlined,color: Colors.white,):SizedBox()),
                                  Align(
                                      alignment: Alignment.center,
                                      child:e.isvideo?Icon(Icons.play_circle_fill_rounded,size:40,color: Colors.white,):SizedBox())
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              ),
              Expanded(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            e.tite,
                            style:GoogleFonts.lato(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),
                            maxLines: 2,
                            overflow: TextOverflow.clip,
                          ),
                          SizedBox(height: 2,),
                          Expanded(child: Container()),
                          Row(
                            children: [
                              SizedBox(width: 5,),
                              Text(e.Author,
                                style: TextStyle(fontSize: 10
                                ),),
                              SizedBox(width: 8,),
                              e.isteam?Container(
                                color: Colors.blue.withOpacity(0.5),
                                  child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text('Team',style: GoogleFonts
                                    .roboto(color: Colors.blue[700],fontSize: 9,fontWeight: FontWeight.bold),),
                              )):SizedBox(),
                              Expanded(child: Container()),
                              Icon(Icons.chat_bubble,color: Colors.grey,size: 17,),
                              SizedBox(width: 5,),
                              Text(e.comment.toString(),
                                style: TextStyle(fontSize: 10
                                ),),
                              SizedBox(width: 5,),
                              Icon(Icons.thumb_up,color:e.islike?Colors.blue:Colors.grey,size: 17,),
                              SizedBox(width: 5,),
                              Text(e.like.toString(),
                                style: TextStyle(
                                    color:e.islike?Colors.blue:Colors.black,fontSize: 10
                                ),),
                              SizedBox(width: 5,),
                              Icon(Icons.save,color: Colors.grey,size: 17,),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    ),
  );
}
Widget chip(Mproject e,Size size){
  return  Container(
      width:size.width/2-40,
      height: 30,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children:e.list.map((el){
          return  Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[100],
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(el,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
              ),
            ),
          );
        }).toList(),
      ));
}
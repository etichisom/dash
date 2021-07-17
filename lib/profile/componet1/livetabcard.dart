import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:work/controller/pagecon.dart';
import 'package:work/model/livestreem.dart';

Widget Lcard( Size size,Lives e, Pagecontrol pp){
  return PhysicalModel(
    elevation: 3,
    color: Colors.black12,
      borderRadius: BorderRadius.circular(10),
    child: Container(
      decoration:BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
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
            child:  Column(
              children: [
                Expanded(
                  child: Container(
                    child: Stack(
                      children: [
                        Positioned(
                          top: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.black.withOpacity(0.5),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(e.duration,style: GoogleFonts.lato(
                                  fontSize: 12,color: Colors.white
                                ),),
                              ),
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.center,
                            child:Icon(Icons.play_circle_fill_rounded,size:45,color: Colors.white70,))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
          ),
          SizedBox(height: 6,),
          Expanded(child: Container(
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(e.title,style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold
                  ),),

                  Expanded(
                    flex: 2,
                      child: Container()),
                  Row(
                    children: [
                      Text(e.author,
                          style: GoogleFonts.roboto(
                              color: Colors.black,fontWeight: FontWeight.w500,
                            fontSize: 12
                          )),
                      SizedBox(width: 3,),
                      CircleAvatar(radius: 3,backgroundColor: Colors.black,),
                      SizedBox(width: 3,),
                      Text(e.date,
                          style: GoogleFonts.roboto(
                              fontSize: 10,
                            color: Colors.grey
                          )),
                      SizedBox(width: 3,),
                    ],
                  ),
                  Expanded(
                      flex: 2,
                      child: Container()),
                ],
              ),
            ),
          ))
        ] ,
      ),
    ),
  );
}
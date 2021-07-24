import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:markdowneditor/markdowneditor.dart';
import 'package:work/component/wid.dart';

class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  List n = [1,2];
  Size size;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
           SizedBox(height: 15,),
          Text('Content',style: GoogleFonts.roboto(fontSize: 18,color:Colors.blue),),
          SizedBox(height: 18,),
          t('Title'),
          SizedBox(height: 10,),
          field('Give some title for this project'),
          SizedBox(height: 18,),
          t('Short Description'),
          SizedBox(height: 10,),
          field('Short description about your project'),
          SizedBox(height: 18,),
          t('Multimedia Content'),
          SizedBox(height: 18,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PhysicalModel(
              color: Colors.black12,
              elevation: 5,
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height:270,
                      width: size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8,top: 8),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  physics: BouncingScrollPhysics(),
                                  children:n.map((e) {
                                    return e==1?Padding(
                                      padding: const EdgeInsets.only(left:10,right: 8),
                                      child: DottedBorder(
                                        color: Colors.grey[600],
                                        strokeWidth: 1,
                                        child: Container(
                                          height:250,
                                          width: 300,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[200],
                                              borderRadius: BorderRadius.circular(5),

                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.image_outlined,size: 60,color: Colors.grey[400],),
                                                  SizedBox(width: 10,),
                                                  Icon(Icons.videocam_rounded,size: 60,color: Colors.grey[400],),
                                                ],
                                              ),
                                              SizedBox(height: 5,),
                                              Text('Add Photos or Videos.',style: GoogleFonts.roboto(fontSize: 12,color:Colors.grey[400]),),
                                              SizedBox(height: 5,),
                                              Text('You can add more than one multimedia file',style: GoogleFonts.roboto(fontSize: 12,color:Colors.grey[400]),),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ):Padding(
                                      padding: const EdgeInsets.only(left:10,right: 8),
                                      child: DottedBorder(
                                        color: Colors.grey[600],
                                        strokeWidth: 1,
                                        child: Container(
                                          height:250,
                                          width: 300,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: Colors.grey[200],
                                          ),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                           Container(
                             height: 250,
                             width: 100,
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 InkWell(
                                   onTap: (){
                                     setState(() {
                                       n.add(n.length+1);
                                     });
                                   },
                                     child: Icon(Icons.add_circle,size: 50,color: Colors.blue,)),
                                 SizedBox(height: 5,),
                                 Text('Add More',style: GoogleFonts.roboto(fontSize: 12,color:Colors.blue),),
                               ],
                             ),
                           )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height:20,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        RaisedButton(
                          onPressed: (){},
                          color: Colors.grey[400],
                        child: Text('Choose File'),),
                        SizedBox(width:10,),
                        Text('(or) Drag and Drop',style: GoogleFonts.roboto(fontSize: 15,color:Colors.black54),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('Photos (PNG, JPG or JPEG, GIF), Videos (mp4, MOV, AVI)',
                        style: GoogleFonts.roboto(fontSize: 15,color:Colors.black),),
                    ),
                    SizedBox(height: 10,),

                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          t('About'),
          SizedBox(height: 15,),
          Container(
            height: 400,
              child: Markeditor(controller:controller , size: size)),
          SizedBox(height: 40,),
        ],
      ),
    );
  }
}

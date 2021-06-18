import 'package:auto_size_text/auto_size_text.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:work/job/component/postjobheader.dart';
import 'package:work/page/job.dart';

class PostJob extends StatefulWidget {
  @override
  _PostJobState createState() => _PostJobState();
}

class _PostJobState extends State<PostJob> {
  int radio =1;
  Size size;
  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PjobHead(size),
            SizedBox(height: 15,),
            Row(
              children: [
                Expanded(
                  flex: 1,
                    child: Container(

                    )),
                Expanded(
                  flex: 3,
                    child: Container(
                        child: ListView(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            SizedBox(height: 10,),
                            AutoSizeText(
                              'Post a Job',
                              style:GoogleFonts.lato(fontSize: 20,color: Colors.blue[900],fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                AutoSizeText(
                                  'Job ',
                                  style:GoogleFonts.lato(fontSize: 15,color: Colors.blue[200],fontWeight: FontWeight.bold),
                                ),

                                AutoSizeText(
                                  '  >  Post a Job' ,
                                  style:GoogleFonts.lato(fontSize: 13,color: Colors.grey,fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(height: 15,),
                            t('Company Logo'),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  color: Colors.grey[300],
                                  child: Icon(Icons.photo_size_select_actual_outlined,size: 25,),
                                ),
                                SizedBox(width: 5,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        FlatButton(onPressed: (){},
                                            color:Colors.grey[300],child:Padding(
                                              padding: const EdgeInsets.all(3.0),
                                              child: Text('Choose File'),
                                        )),
                                        Text('  (or) Drag and Drop'),

                                      ],
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                    ),
                                    Text('Supported File Formats: PNG, JPG or JPEG',style: TextStyle(color: Colors.grey),)
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 15,),
                           Row(
                             children: [
                               Expanded(
                                   child: Column(


                                   children: [
                                    t('Company Name'),
                                     SizedBox(height: 10,),
                                     field(''),
                                     SizedBox(height: 20,),
                                     t('Job Title'),
                                     SizedBox(height: 10,),
                                     field(''),
                                     SizedBox(height: 20,),
                                     t('Salary Package'),
                                     SizedBox(height: 10,),
                                     field('10K - 20K'),
                                     ],
                                     crossAxisAlignment: CrossAxisAlignment.start,
                               )
                               ),
                               SizedBox(width: 20,),
                               Expanded(child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   t('Company Location'),
                                   SizedBox(height: 10,),
                                   field(''),
                                   SizedBox(height: 20,),
                                   t('Job Type'),
                                   SizedBox(height: 10,),
                                   field(''),
                                   SizedBox(height: 20,),
                                   t('Short Description'),
                                   SizedBox(height: 10,),
                                   field('e.g. We are looking for a senior UI/UX Designer'),
                                 ],
                               )),
                             ],
                           ),
                            SizedBox(height: 15,),
                            t('Job Description'),
                            SizedBox(height: 10,),
                            bigfield(),
                            SizedBox(height: 15,),
                            t('Job Location'),
                            SizedBox(height: 10,),
                            CSCPicker(
                              onCountryChanged: (value) {
                                setState(() {

                                });
                              },
                              onStateChanged:(value) {
                                setState(() {

                                });
                              },
                              onCityChanged:(value) {
                                setState(() {

                                });
                              },
                            ),
                            SizedBox(height: 15,),
                            t('Fields by Categories'),
                            SizedBox(height: 10,),
                            field1('Select at least 3 related fields'),
                            SizedBox(height: 15,),
                            t('Tags'),
                            SizedBox(height: 10,),
                            field('Add at least 3 related tags'),
                            SizedBox(height: 15,),
                            t('Company Web URL'),
                            SizedBox(height: 10,),
                            field('https://www.example.com'),
                            SizedBox(height: 15,),
                            t('Company Mail'),
                            SizedBox(height: 10,),
                            field('example@company.com'),
                            SizedBox(height: 20,),
                            Text('Social Media Links',style: GoogleFonts.roboto(fontSize: 17,fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Expanded(
                                    child: Column(
                                      children: [
                                        t('Facebook'),
                                        SizedBox(height: 10,),
                                        field(''),
                                        SizedBox(height: 20,),
                                        t('Linked in'),
                                        SizedBox(height: 10,),
                                        field(''),
                                      ],
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                    )
                                ),
                                SizedBox(width: 20,),
                                Expanded(child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    t('Instagram'),
                                    SizedBox(height: 10,),
                                    field(''),
                                    SizedBox(height: 20,),
                                    t('Twitter'),
                                    SizedBox(height: 10,),
                                    field(''),
                                  ],
                                )),
                              ],
                            ),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Expanded(child:Container(
                                  child: Row(
                                    children: [
                                      radi(context, 1),
                                      SizedBox(width: 3,),
                                      Expanded(child: Container(child: Text('Explorica Innovations',style: GoogleFonts.roboto(color: Colors.grey[300]
                                      ,fontSize: 12),
                                      ))),
                                      SizedBox(width: 7,),
                                      radi(context, 2),
                                      SizedBox(width: 3,),
                                      Expanded(child: Container(child: Text('Company Link',style: GoogleFonts.roboto(fontSize: 12),))),
                                    ],
                                  ),
                                )),
                                SizedBox(width: 10,),
                                Expanded(child:Container(
                                  child: field('https://www.example.com'),
                                )),
                              ],
                            ),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                ElevatedButton(onPressed: (){}, child:Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('preview',style: TextStyle(color: Colors.white)),
                                )),
                                SizedBox(width: 15,),
                                OutlineButton(onPressed: (){}, child:Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Cancel',),
                                ))
                              ],
                            ),
                            SizedBox(height: 100,),
                          ],
                        ),
                    )),
                Expanded(
                  flex: 1,
                    child: Container(

                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget t(String t){
    return  AutoSizeText(
      t ,
      style:GoogleFonts.lato(fontSize: 16,color: Colors.black,),
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
  Widget field1(String s){
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

 Widget bigfield() {
    return Container(
      height: 200,

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
              color: Colors.grey[200],
              child:TextField(
                maxLines:200,
                decoration: InputDecoration(
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
   return Text(s,style:GoogleFonts.italianno(fontWeight: FontWeight.bold,fontSize: 18),);
 }

 Widget radi(BuildContext context, int i,) {
    return   Radio(
        value:i,
        groupValue:radio, onChanged:(v){
      setState(() {
        radio=v;
      });
    });
 }
}

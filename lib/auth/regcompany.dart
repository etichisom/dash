import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:work/component/wid.dart';

class Regc{
  BuildContext context;
  Size size;
  final key = GlobalKey<FormState>();

  Regc(this.context,this.size);


  dia(){
    showDialog(context: context, builder:(context){
      return StatefulBuilder(builder: (context,setState){
        return SimpleDialog(
          backgroundColor:Colors.white ,
          insetPadding: EdgeInsets.only(left:20,right: 20),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          children: [
            Form(
              key: key,
              child: Container(
                height: size.height-100,
                width: size.width-size.width/5,
                child: Row(
                  children: [
                    Expanded(child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 40,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: SizedBox(
                            height: 70,
                              child: Image.asset('img/login_page_logo.png',fit: BoxFit.contain,)),
                        ),
                          Expanded(
                            flex: 1,
                              child: Container()),
                          pic(),
                          Expanded(
                              flex: 2,
                              child: Container()),
                        ],
                      ),
                    )),
                    Expanded(child: Container(
                       child: form(),
                    )),
                    Expanded(child: Container(
                      child: form2(),
                    ))
                  ],
                ),
              ),
            )
          ],
        );
      });
    });
  }
  pic(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: t('Company Logo'),
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: 70,
              color: Colors.grey[200],
              child: Icon(Icons.photo_size_select_actual_outlined,size: 27,color: Colors.grey[400],),
            ),
            SizedBox(width: 5,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    FlatButton(onPressed: (){},
                        color:Colors.grey[200],child:Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text('Choose File'),
                        )),
                    Text('  (or) Drag and Drop'),

                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                Text('Supported File Formats: PNG, JPG or JPEG',style: TextStyle(color: Colors.grey,fontSize: 12),)
              ],
            )
          ],
        ),
      ],
    );
  }

 Widget form() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          SizedBox(height: 20,),
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           AutoSizeText('Register your company now!' ,
           style:GoogleFonts.roboto(fontSize: 18,color: Colors.black),),
         ],
       ),
          SizedBox(height: 15,),
          Text('Enter your information to setup a company account.',style: TextStyle(color: Colors.grey[400],fontSize: 14)),
          SizedBox(height: 30,),
          Text('Company Name',style: TextStyle(color: Colors.grey[400],fontSize: 14)),
          SizedBox(height: 1,),
          textfield('Infosys Pvt. Ltd','Company Name'),
          SizedBox(height: 10,),
          textfield('Company Mail ID','Company Mail ID'),
          SizedBox(height: 1,),
          textfield('Password','Password'),
          SizedBox(height: 1,),
          textfield('Company Location','Company Location'),
          SizedBox(height: 1,),
          textfield('Short Description about your company','Short Description about your company'),

        ],
      ),
    );
 }
 Widget textfield(String s,String v){
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter ' + v;
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: s
      ),
    );
 }

 Widget form2() {
    return Padding(
      padding: const EdgeInsets.only(right: 35,left: 10),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                  child: Icon(Icons.clear)
              )
            ],),
          ),
          SizedBox(height: 30,),
          textfield('Company Web URL','Company Web URL'),
          SizedBox(height: 10,),
          t('Social Media'),
          SizedBox(height: 1,),
          Text('Facebook',style: TextStyle(color: Colors.grey[400],fontSize: 12)),
          textfield('www.infosys/facebook.com','Facebook'),
          SizedBox(height: 1,),
          textfield('Twitter','Twitter'),
          SizedBox(height: 1,),
          textfield('Instagram','Instagram'),
          SizedBox(height: 1,),
          textfield('Linked in','Linked in'),
          SizedBox(height: 40,),
          ElevatedButton(
            onPressed: (){
              if(key.currentState.validate()){
                print('vaild');
                Navigator.pop(context);
              }else{
                print('not valid');
              }
            },
          child: Text('Get Started'),)
        ],
      ),
    );
 }
}
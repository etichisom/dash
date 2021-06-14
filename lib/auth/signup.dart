import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:work/controller/authcontroller.dart';

class Box{
  BuildContext context;
   Size size;
   Controller controller;
  int ind =0;
  List h = [false,false];
  final loginkey = GlobalKey<FormState>();
  final signupkey = GlobalKey<FormState>();
  Box(this.context,this.size,this.controller);

  Widget dia (){
     showDialog(context: context, builder: (context){
       return StatefulBuilder(builder: (context,setState){
         return SimpleDialog(
           backgroundColor:Colors.blue[100] ,
           insetPadding: EdgeInsets.only(left:20,right: 20),
           shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(20)
           ),
           children: [
             Container(
               height: size.height-100,
               width: size.width-size.width/5,
               child: Row(
                 children: [
                   Expanded(child: Container(
                     child: Column(
                       children: [
                         Expanded(
                             child: Container(

                                 child: Image.asset('img/login_page_logo.png',fit: BoxFit.scaleDown,))),
                         Expanded(
                             child: Container(
                               child: Align(
                                   alignment: Alignment.bottomLeft,
                                   child: Image.asset('img/login_img.png')),
                             )),

                       ],
                     ),
                   )),
                   Expanded(child: Container(
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.end,
                       children: [
                         InkWell(
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Icon(Icons.clear),
                           ),
                           onTap: (){
                             Navigator.pop(context);
                           },
                         ),
                         Expanded(
                             flex: 4,
                             child: Container(
                                 child:Row(
                                   children: [
                                     Expanded(
                                         flex: 1,
                                         child: Container()),
                                     PhysicalModel(
                                       elevation: 7,
                                       borderRadius: BorderRadius.circular(10),
                                       color: Colors.black,
                                       child: Container(
                                         height: 400,
                                         width: 350,
                                         decoration:BoxDecoration(
                                             color: Colors.white,
                                             borderRadius: BorderRadius.circular(10)
                                         ) ,
                                         child: Column(
                                           children: [
                                             SizedBox(height: 5,),
                                             Row(
                                               children: [
                                                 SizedBox(width: 10,),
                                                 Padding(
                                                   padding: const EdgeInsets.all(8.0),
                                                   child: Column(
                                                     children: [
                                                       InkWell(
                                                         onHover: (v){
                                                           setState((){
                                                             h[0]=v;
                                                           });
                                                         },
                                                         onTap: (){
                                                           setState((){
                                                            ind=0;
                                                          });
                                                         },
                                                         child: AutoSizeText(
                                                           'Login',
                                                           style:GoogleFonts.lato(fontSize: 19,
                                                               color:ind==0?Colors.blue:
                                                               h[0]?Colors.green[100]:Colors.black,
                                                               fontWeight: FontWeight.bold),
                                                         ),
                                                       ),
                                                       SizedBox(height: 5,),
                                                       Container(width:60 ,
                                                         height: 3,
                                                         color:ind==0?Colors.blue:
                                                         h[0]?Colors.green[100]:Colors.white,)
                                                     ],
                                                   ),
                                                 ),
                                                 Padding(
                                                   padding: const EdgeInsets.all(8.0),
                                                   child: Column(
                                                     children: [
                                                       InkWell(
                                                         onHover: (v){
                                                           setState((){
                                                             h[1]=v;
                                                           });
                                                         },
                                                         onTap: (){
                                                           setState((){
                                                             ind=1;
                                                           });
                                                         },
                                                         child: AutoSizeText(
                                                           'Sign Up',
                                                           style:GoogleFonts.lato(fontSize: 19,
                                                               color:ind==1?Colors.blue:
                                                               h[1]?Colors.green[100]:Colors.black,
                                                               fontWeight: FontWeight.bold),
                                                         ),
                                                       ),
                                                       SizedBox(height: 5,),
                                                       Container(width:60 ,
                                                         height: 3,
                                                         color:ind==1?Colors.blue:
                                                         h[1]?Colors.green[200]:Colors.white,)
                                                     ],
                                                   ),
                                                 ),
                                               ],
                                             ),
                                             SizedBox(height: 10,),
                                             Expanded(child: Container(
                                               child: ind==1?signup(setState):login(setState),
                                             ))
                                           ],
                                         ),

                                       ),
                                     ),
                                     Expanded(
                                         flex: 1,
                                         child: Container()),
                                   ],
                                 )
                             )),

                       ],
                     ),
                   ))
                 ],
               ),
             )
           ],
         );
       });
});
}

  Widget signup(setState) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Form(
        child: Column(
          children: [
            AutoSizeText(
              'Enter your information to setup a new account.',
              style:GoogleFonts.lato(fontSize: 12,color: Colors.black),
            maxLines: 3,overflow: TextOverflow.clip,),
            SizedBox(height: 8,),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail,size: 14,),
                  labelStyle: TextStyle(fontSize: 14),
                  contentPadding: EdgeInsets.only(top:8),
                  labelText: 'Username'
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail,size: 14,),
                  labelStyle: TextStyle(fontSize: 14),
                  contentPadding: EdgeInsets.only(top:8),
                  labelText: 'Email Id'
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock,size: 14,),
                  labelText: 'Password',
                  labelStyle: TextStyle(fontSize: 14)

              ),
            ),
            SizedBox(height: 5,),
            SizedBox(height: 8,),
            ElevatedButton(onPressed: (){}, child:Text('Get Started',style: TextStyle(color: Colors.white),)),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('or login with',),
              ],
            ),
            SizedBox(height: 5,),
            gf()

          ],
        ),
      ),
    );
  }

   Widget login(setState) {
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AutoSizeText(
              'Use your credentials to login into account.',
              style:GoogleFonts.lato(fontSize: 12,color: Colors.black),
              maxLines: 3,overflow: TextOverflow.clip,),
            SizedBox(height: 8,),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail,size: 14,),
                  labelStyle: TextStyle(fontSize: 14),
                  contentPadding: EdgeInsets.only(top:8),
                  labelText: 'Email Id'
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock,size: 14,),
                  labelText: 'Password',
                   labelStyle: TextStyle(fontSize: 14)

              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(child: Text('Forgot Password ?',style: TextStyle(color: Colors.blue),))
              ],
            ),
            SizedBox(height: 8,),
            ElevatedButton(onPressed: (){}, child:Text('Login',style: TextStyle(color: Colors.white),)),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('or login with',),
              ],
            ),
            SizedBox(height: 5,),
            gf()

          ],
        ),
      ),
    );
   }

 Widget gf() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: (){},
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Row(
                children: [
                  Image.asset('img/facebook.png',fit: BoxFit.contain,),
                  SizedBox(width: 3,),
                  Text('Facebook',style: TextStyle(color: Colors.blue)),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 5,),
       InkWell(
         onTap: (){},
         child: Card(
           child: Padding(
             padding: const EdgeInsets.all(3.0),
             child: Row(
               children: [
                 Image.asset('img/google.png',fit: BoxFit.contain,),
                 SizedBox(width: 3,),
                 Text('Google',style: TextStyle(color: Colors.blue)),
               ],
             ),
           ),
         ),
       )
      ],
    );
  }
}
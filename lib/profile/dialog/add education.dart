import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:work/component/wid.dart';

class addeducation{
  Size size;
  BuildContext context;

  addeducation(this.size,this.context);

  dia(){
    showDialog(context: context, builder: (context){
      return SimpleDialog(
        children: [
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Edit Experience',style:GoogleFonts.roboto(
                    fontSize: 16,color: Colors.blue[800],fontWeight: FontWeight.bold
                ),),
                InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.clear))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25,top: 10),
            child: Container(
              width: 280,
              height: 300,
              child: Container(
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15,),
                    t('Degree'),
                    SizedBox(height: 10,),
                    field('Ex: Bachelor of Science'),
                    SizedBox(height: 15,),
                    t('School / University'),
                    SizedBox(height: 10,),
                    field(''),
                    SizedBox(height: 15,),
                    t('Location'),
                    SizedBox(height: 10,),
                    field(''),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){}, child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Text('Add'),
              )),
            ],
          ),
        ],
      );
    });
  }
}
import 'package:flutter/material.dart';
import 'package:work/addproject/dialog/embed.dart';
import 'package:work/addproject/dialog/style.dart';
import 'package:work/component/wid.dart';
import 'package:work/model/docu.dart';

class Doc extends StatefulWidget {
  @override
  _DocState createState() => _DocState();
}

class _DocState extends State<Doc> {
  List<Docu> dd = [
    Docu('Image', Icon(Icons.image_outlined)),
    Docu('Video', Icon(Icons.videocam_rounded)),
    Docu('Audio', Icon(Icons.music_note)),
    Docu('Embed', Icon(Icons.accessibility)),
    Docu('Styles', Icon(Icons.color_lens_outlined))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
           SizedBox(height: 20,),
          Container(
            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children:dd.map((e){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      dia(context,e);
                    },
                    child: Container(
                      width: 120,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[300]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          e.icon,
                          SizedBox(width: 4,),
                          Text(e.name)
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 15,),
          bigfield('',Colors.white60,350)
        ],
      ),
    );
  }

   dia(BuildContext context,Docu ddd) {
    if(ddd.name == 'Embed'){
      Embed(context).dia();
    }else if(ddd.name =='Styles'){
      Stly(context).dia();
    }
   }
}

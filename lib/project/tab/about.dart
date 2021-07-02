import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:work/component/wid.dart';
import 'package:work/global/global.dart';
class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        Container(
            child: attr('Future technology of GPS and Motion Sensors with easy tutorial explanations')),
        SizedBox(height: 6,),
        row('Project Done By : ', 'Maxwell Jonas'),
        SizedBox(height: 6,),
        row('Assistance : ', 'Henry Williams'),
        SizedBox(height: 6,),
        row('Studio : ', 'Explorica Labs and Research Center'),
        SizedBox(height: 6,),
        Text('Other Project Links :'),
        SizedBox(height: 6,),
        link('www.exploricaprojects/gps.com'),
        SizedBox(height: 6,),
        link('www.exploricaprojects/standardtechnologyongps.com'),
        SizedBox(height: 8,),
        Container(
          child: Text(long),
        ),
        SizedBox(height: 8,),
        a('Visit our company website'),
        SizedBox(height: 5,),
        link('www.company.com'),
        SizedBox(height: 20,),
      ],
    );
  }
  Widget row(String g,String f){
    return Row(
      children: [
        t(g),
        SizedBox(height: 5,),
        Text(f)
      ],
    );
  }
  Widget link(String link){
   return Text(link,style: TextStyle(color: Colors.blue),);
  }
  Widget a(String link){
    return Text(link,style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),);
  }
}

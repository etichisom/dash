import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:work/component/wid.dart';

class Propage extends StatefulWidget {
  @override
  _PropageState createState() => _PropageState();
}

class _PropageState extends State<Propage> {
  Size size;
  @override
  Widget build(BuildContext context) {
   size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30,top: 20),
        child: ListView(
          physics:BouncingScrollPhysics(),
          children: [
            text('< Back'),
            SizedBox(height: 20,),
           Text('Project',style:GoogleFonts.roboto(fontSize: 23,color: Colors.blue[800],fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
          Container(
            width: size.width,
            height: 600,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Expanded(child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            image: DecorationImage(
                              image: AssetImage('p/img_1_project.png'),
                              fit: BoxFit.contain
                            )
                          ),
                        )),

                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(child: Container()),
              ],
            ),
          )
          ],
        ),
      ),
    );
  }
}

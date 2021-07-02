import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:work/global/global.dart';

class Discover extends StatefulWidget {
  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10,),
      Text('Let s see as a Documentary of Future technology of GPS and Motion Sensors',
        style:GoogleFonts.roboto(fontWeight: FontWeight.bold,fontSize: 20),),
        SizedBox(height: 15,),
        Container(
          height: 120,
            child: Stack(
              children: [
                Text(longer,overflow: TextOverflow.fade,maxLines: 6,),
              ],
            )),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.blue.withOpacity(0.2),

              ),
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Text('Click to View More',
                    style:GoogleFonts.roboto(color: Colors.blue[300])),
              ),
            ),
          ],
        )
      ],
    );
  }
}

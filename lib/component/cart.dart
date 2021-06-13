import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:work/model/learn.dart';

Widget Cart(Size size,BuildContext context){
  final controller = AutoScrollController(
      viewportBoundaryGetter: () => Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: Axis.horizontal,
  );
  return  Padding(
    padding: const EdgeInsets.only(left: 50,right: 50),
    child: Row(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.4),
              shape: BoxShape.circle
          ),
          child: Icon(Icons.arrow_back_ios_rounded,color:Colors.blue[900],),
        ),
        SizedBox(width: 10,),
        Expanded(
          child: Container(
            height: 74,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children:l.map((e){
                int ind = l.indexOf(e);
                return AutoScrollTag(
                  key: ValueKey(ind),
                  controller: controller,
                  index: ind,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:74,
                      width: 227,
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(e.assest),
                              fit: BoxFit.cover
                          )
                      ),
                      child:  Center(
                        child: AutoSizeText(
                          e.cat,
                          style:GoogleFonts.lato(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
                          maxLines: 2,
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        SizedBox(width: 15,),
        GestureDetector(
          onTap: (){
            controller.scrollToIndex(4,preferPosition: AutoScrollPosition.begin);
          },
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.4),
                shape: BoxShape.circle
            ),
            child: Icon(Icons.arrow_forward_ios_rounded,color:Colors.blue[900],),
          ),
        ),
      ],
    ),
  );
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:work/controller/pagecon.dart';
import 'package:work/model/projectm.dart';
import 'package:work/profile/profilecard.dart';
import 'package:work/profile/profilecard2.dart';
import 'package:work/profile/tabs/livetab.dart';
import 'package:work/profile/tabs/pproject.dart';
import 'package:work/profile/tabs/saved.dart';
import 'package:work/project/projectcard.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile>with SingleTickerProviderStateMixin {
  Size size;
  int index = 0;
  List h = [
    false,false,false
  ];
  TabController tabController;
  Pagecontrol pp;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    pp = Provider.of<Pagecontrol>(context);
    List t = [ptab(size, pp),livetab(size, pp),savedtab(size, pp)];
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height:50,),
          Container(
            height: size.height ,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                    child: Container(
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(60.0),
                            child: PhysicalModel(
                              elevation: 3,
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey,
                              child: Container(
                                height: 680,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)

                                ),
                                child: pcard2(size),

                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                Expanded(
                    flex: 4,
                    child: Container(
                      child: Column(
                        children: [
                         Row(
                           children: [

                             tabtext('Projects', 0),
                             tabtext('Live Streams', 1),
                             tabtext('saved',2),
                           ],
                         ),
                          Expanded(child:Container(
                            child: t[index],
                          )),
                          SizedBox(height: 50,),
                          FlatButton(onPressed: (){},
                              color: Colors.blue.withOpacity(0.3),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8,right: 8),
                                child: Text('Load More',style: GoogleFonts.lato(
                                    color: Colors.blue[500]
                                ),),
                              )
                          ),
                          SizedBox(height: 20,)

                        ],
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  Widget tabtext(String s, int i) {
    return InkWell(
      hoverColor: Colors.white,
      onHover: (e){
        setState(() {
          h[i]=e;
        });
      },
      onTap: (){
        setState(() {
          index=i;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(s, style: TextStyle(fontSize: 19,color:
            index==i?Colors.blue:h[i]==true?Colors.green.withOpacity(0.5):
            Colors.grey,fontWeight:FontWeight.w600 ),),
            SizedBox(height: 5,),
            Container(
              width: 90,
              child: Divider(thickness: 2,color:index==i?Colors.blue:h[i]==true?Colors.green.withOpacity(0.5):
              Colors.white ,),
            )
          ],
        ),
      ),
    );
  }

}

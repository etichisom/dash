import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';
import 'package:work/component/wid.dart';
import 'package:work/controller/pagecon.dart';
import 'package:work/model/learn.dart';
import 'package:work/model/projectm.dart';
import 'package:work/model/user.dart';
import 'package:work/project/projectcard.dart';
import 'package:work/project/tab/about.dart';
import 'package:work/project/tab/comment.dart';
import 'package:work/project/tab/discover.dart';

class Propage extends StatefulWidget {
  @override
  _PropageState createState() => _PropageState();
}

class _PropageState extends State<Propage>with SingleTickerProviderStateMixin {
  Size size;
  Pagecontrol pp;
  TabController controller;
  FlickManager flickManager;

  int index =0;
  List<Widget> w = [About(),Discover(),Comment()];
  @override
  Widget build(BuildContext context) {
   size = MediaQuery.of(context).size;
   pp=Provider.of<Pagecontrol>(context);
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
            height: 450,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Expanded(child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),

                          ),
                          child: FlickVideoPlayer(
                              flickManager: flickManager
                          ),
                        )),
                          SizedBox(height: 15,),
                          Container(
                            height: 70,
                            width: size.width/2,
                            child: Row(
                              children: [
                                Container(
                                  height: 19,
                                  width: 19,
                                  decoration: BoxDecoration(
                                      color: Colors.blue.withOpacity(0.4),
                                      shape: BoxShape.circle
                                  ),
                                  child: Icon(Icons.arrow_back_ios_rounded,color:Colors.blue[900],size: 12,),
                                ),
                                SizedBox(width: 2,),
                                Expanded(
                                  child: Container(
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      physics: BouncingScrollPhysics(),
                                      children: l.map((e){
                                        return Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Container(
                                            height: 70,
                                            width:100,
                                            decoration:BoxDecoration(
                                                borderRadius: BorderRadius.circular(15),
                                                image: DecorationImage(
                                                    image: AssetImage(e.assest),
                                                    fit: BoxFit.cover
                                                )
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2,),
                                Container(
                                  height: 19,
                                  width: 19,
                                  decoration: BoxDecoration(
                                      color: Colors.blue.withOpacity(0.4),
                                      shape: BoxShape.circle
                                  ),
                                  child: Icon(Icons.arrow_forward_ios,color:Colors.blue[900],size: 12,),
                                ),
                              ],
                            ),
                          )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(child: Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.more_horiz,size: 25,)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Text(pp.project.tite,
                            style:GoogleFonts.roboto(fontSize: 23,fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                          Text('Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis',
                            style:GoogleFonts.roboto(
                              fontSize: 17
                            ),),
                          SizedBox(height: 20,),
                          chip(pp.project, size),
                          Expanded(child: Container()),
                          Row(
                            children: [
                              CircleAvatar(
                                 backgroundImage: AssetImage(pp.project.avatar),
                                        ),
                              SizedBox(width: 9,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(pp.project.Author,style: GoogleFonts.roboto(
                                        fontSize: 16,color: Colors.blue
                                      ),),
                                      SizedBox(height: 2,),
                                      Text('GPS Technology Specialist'),
                                      SizedBox(height: 3,),
                                      Row(
                                        children: [
                                          n('25k'),
                                          SizedBox(width: 3,),
                                          lp('Projects'),
                                          SizedBox(width: 4,),
                                          n('65k'),
                                          SizedBox(width: 3,),
                                          lp('Followers'),
                                          SizedBox(width: 4,),
                                          n('584'),
                                          SizedBox(width: 3,),
                                          lp('Following'),
                                          SizedBox(width: 4,),
                                        ],
                                      )
                                    ],
                                  ),
                              Expanded(child: Container()),
                              ElevatedButton(
                                  onPressed: (){},
                                  child:Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Follow'),
                                  )
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Icon(Icons.thumb_up,color: Colors.blue,),
                              SizedBox(width: 2,),
                              Text('50',style: TextStyle(color: Colors.blue),),
                              SizedBox(width: 10,),
                              Icon(Icons.share,),
                              SizedBox(width: 10,),
                              Icon(Icons.save,),
                              Expanded(child: Container()),
                              Text('As follows',style: TextStyle(fontSize: 10),),
                              SizedBox(width: 5,),
                              icon(Icon(FeatherIcons.facebook,color: Colors.white,)),
                              icon(Icon(FeatherIcons.twitter,color: Colors.white)),
                              icon(Icon(FeatherIcons.linkedin,color: Colors.white)),
                            ],
                          ),
                          SizedBox(height: 20,)
                        ],
                      ),
                    ),
                  ),
                )),
              ],
            ),
          ),
            SizedBox(height:20 ,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Expanded(
                flex: 2,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                child: TabBar(
                                  onTap: (i){
                                    setState(() {
                                      index=i;
                                    });
                                  },
                                  controller: controller,
                                    labelPadding: EdgeInsets.all(2),
                                    indicatorPadding:EdgeInsets.all(2),
                                    indicatorSize: TabBarIndicatorSize.label,
                                    indicatorWeight: 2.0,
                                    labelColor: Colors.blue,
                                    unselectedLabelColor: Colors.grey[700],
                                    tabs: [
                                      Tab(
                                        child: Text('About',style:TextStyle(fontSize: 18,fontWeight:FontWeight.bold) ,),
                                      ),
                                      Tab(
                                        child: Text('Documentary',style:TextStyle(fontSize: 18,fontWeight:FontWeight.bold) ,),
                                      ),
                                      Tab(
                                        child: Text('Comments',style:TextStyle(fontSize: 18,fontWeight:FontWeight.bold) ,),
                                      ),
                                    ]
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                                child: Container()),
                          ],
                        ),
                       w[index]

                      ],
                    ),
                  )),
              Expanded(
                flex: 1,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30,),
                        Text('Explore More',style: GoogleFonts.roboto(
                          fontSize:22,color: Colors.blue[800],fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 25,),
                        Container(
                          height: 35,
                          width: double.maxFinite,
                          child: chipp(tl),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          height: 35,
                          width: double.maxFinite,
                          child: chipp(tt),
                        ),
                        SizedBox(height: 5,),
                        Text('Similar Profiles',style: GoogleFonts.roboto(
                            fontSize:18,color: Colors.blue[900],fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 10,),
                        ListView(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: user.map((e) => listiles(e)).toList(),
                        ),


                      ],
                      
                    ),
                  )),
            ],),
            SizedBox(height: 10,),
            index==1? Text('Suggested Projects',style: GoogleFonts.roboto(
                fontSize:20,color: Colors.blue[900],fontWeight: FontWeight.bold
            ),):SizedBox(),
            SizedBox(height: 10,),
           index==1?Container(
              width: size.width,
              height: 300,
              child: ListView(
              scrollDirection: Axis.horizontal,
                children:p.map((e) => Container(
                    width: 250,
                    child: Pcard(size,e,pp)) ).toList(),
              ),
            ):SizedBox(),
            SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }

 Widget icon(Icon icon){
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          color: Colors.blue[700],
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: icon,
          )),
    );
 }
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);
    flickManager = FlickManager(
      videoPlayerController:
      VideoPlayerController.network("https://r3---sn-5hnekn7k.googlevideo.com/videoplayback?expire=1625434124&ei=q9PhYPOvPPe6mLAPrtSEMA&ip=186.103.220.235&id=o-AMEVSHCxg9RZ3WOS4ir4HiJlLjbPjiVWDYp6C_0V7iGN&itag=18&source=youtube&requiressl=yes&vprv=1&mime=video%2Fmp4&ns=B0BnAyxYXD6juDhL2EjNtpwG&gir=yes&clen=1973073&ratebypass=yes&dur=28.421&lmt=1561400136751460&fexp=24001373,24007246&c=WEB&txp=5431432&n=M-ZxGPXYiUAaKN&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRgIhAISalMQkUBw1af_tNHaWS2LDm-R6dWK6OOU_y4Wz1QVoAiEAv6wbH1pjfzBYLnuy2wXxbF3D3FldoEh22tbm_EbVq-g%3D&rm=sn-uxgg5-njae77s,sn-uxgg5-njaed7s&req_id=afad269529f5a3ee&redirect_counter=3&cm2rm=sn-njaee7e&cms_redirect=yes&mh=fi&mip=197.210.79.110&mm=34&mn=sn-5hnekn7k&ms=ltu&mt=1625421876&mv=m&mvi=3&pl=24&lsparams=mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRAIgLfDggjONxgJUm6J_V_qiTVRITQbwzGSbdz3p3KJyNZACID_cewn-IIooa_YEzyaSUD0-coTBDdby3yNS_gPmXC1g"),
    );

  }
  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }
}

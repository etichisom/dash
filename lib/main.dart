import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vrouter/vrouter.dart';
import 'package:work/controller/authcontroller.dart';
import 'package:work/controller/pagecon.dart';
import 'package:work/job/postjob.dart';
import 'package:work/page/body.dart';
import 'package:work/page/home.dart';
import 'package:work/page/job.dart';
import 'package:work/project/documentary.dart';
import 'package:work/project/project.dart';
import 'package:work/project/projectpage.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Pagecontrol>.value(
          value: Pagecontrol(),
        ),
        ChangeNotifierProvider<Authcontrol>.value(
          value: Authcontrol(),
        )
      ],
      child: VRouter(
          buildTransition: (animation1, _, child) {
            return FadeTransition(opacity: animation1, child: child);
          },
          // You can specify a transition duration (default 300)
          transitionDuration: Duration(milliseconds: 500),
        debugShowCheckedModeBanner: false,
         initialUrl: '/0',
         routes: [
           VNester(
             path: '/',
             widgetBuilder: (child) => Home(child), // Child is the widget from nestedRoutes
             nestedRoutes: [
               VWidget(path: '0', widget: Project()), // null path matches parent
               VWidget(path: '4', widget: Body()),
               VWidget(path: '3', widget: Job()),
               VWidget(path: '2', widget: Body()),
               VWidget(path: '1', widget: Job()),
               VWidget(path: 'docu', widget: Documentary()),
               VWidget(path: 'view', widget: Propage()),
               VWidget(path: 'postjob', widget: PostJob()),
             ],
           ),
           ]
    ));
  }
}


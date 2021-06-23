import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/controller/pagecon.dart';
import 'package:work/page/home.dart';

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
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}


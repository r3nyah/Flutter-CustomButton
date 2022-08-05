import 'package:flutter/material.dart';

import 'Src/Home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);
  static final title = 'Flutter Custom Button';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HomePage(title: title,),
    );
  }
}

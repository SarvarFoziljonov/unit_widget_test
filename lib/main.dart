import 'package:flutter/material.dart';
import 'package:unit_widget_test/pages/creat_page.dart';
import 'package:unit_widget_test/pages/detail_page.dart';
import 'package:unit_widget_test/pages/home_page.dart';
import 'package:unit_widget_test/pages/update_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
    CreatPage.id: (context) => CreatPage(),
    UpdatePage.id: (context) => UpdatePage(),
    DetailPage.id: (context) => DetailPage(),


    }
    );
  }
}


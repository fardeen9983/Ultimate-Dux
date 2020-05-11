import 'package:flutter/material.dart';
import 'package:healthcare/misc/utils.dart';
import 'package:healthcare/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.purple,
            scaffoldBackgroundColor: mainBgColor
        ),
        home: HomePage());
  }
}

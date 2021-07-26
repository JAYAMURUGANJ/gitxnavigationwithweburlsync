import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation/screens/fourth.dart';
import 'package:getx_navigation/screens/home.dart';
import 'package:getx_navigation/screens/second.dart';
import 'package:getx_navigation/screens/third.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home(),
      theme: ThemeData(
        accentColor: Colors.purpleAccent,
        primaryColor: Colors.blue,
      ),
      getPages: [
        GetPage(name: '/', page: () => Home()),
        GetPage(name: '/second', page: () => Second()),
        GetPage(
            name: '/third', page: () => Third(), transition: Transition.zoom),
        GetPage(name: "/fourth", page: () => Fourth()),
      ],
    );
  }
}

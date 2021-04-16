import 'package:flutter/material.dart';
import 'package:uznay_sysert/app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Узнай Сысерть',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: App(),
      debugShowCheckedModeBanner: false,
    );
  }
}

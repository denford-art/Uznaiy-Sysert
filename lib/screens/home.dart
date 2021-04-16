import 'package:flutter/material.dart';
import 'package:uznay_sysert/screens/factFirst.dart';
import 'package:uznay_sysert/text_const.dart';
import 'package:uznay_sysert/widgets/ImageCard.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(kTitleHome,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            )),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ImageCard('Призрак в камне', AssetImage("assets/images/talk.jpg"),
              FactFirst()),
          ImageCard("2Your fact", AssetImage("assets/images/cerkov.jpg"),
              FactFirst()),
          ImageCard(
              "3Your fact", AssetImage("assets/images/plot.jpg"), FactFirst()),
          ImageCard(
              "4Your fact", AssetImage("assets/images/usad.jpg"), FactFirst()),
        ],
      ),
    );
  }
}

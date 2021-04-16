import 'package:flutter/material.dart';
import 'package:uznay_sysert/screens/routes/otIstokov/aboutOtIstokov.dart';
import 'package:uznay_sysert/screens/routes/poSledam/aboutPoSledam.dart';
import 'package:uznay_sysert/text_const.dart';
import 'package:uznay_sysert/widgets/ImageCard.dart';

import 'factFirst.dart';

class RoutesScreen extends StatefulWidget {
  @override
  _RoutesScreenState createState() => _RoutesScreenState();
}

class _RoutesScreenState extends State<RoutesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(kTitleRoutes,
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
          ImageCard(kOtIstokov, AssetImage("assets/images/oldZavod.jpeg"),
              AboutOtIstokov()),
          ImageCard(kPoSledamBazhov, AssetImage("assets/images/talk.jpg"),
              AboutPoSledam()),
          ImageCard(kNewRoute, AssetImage("assets/images/gidromash.png"),
              FactFirst()),
        ],
      ),
    );
  }
}

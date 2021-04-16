import 'package:flutter/material.dart';
import 'package:uznay_sysert/screens/routes/otIstokov/hram.dart';
import 'package:uznay_sysert/screens/routes/otIstokov/oldZavod.dart';
import 'package:uznay_sysert/screens/routes/otIstokov/plotina.dart';
import 'package:uznay_sysert/screens/routes/otIstokov/upravlenie.dart';
import 'package:uznay_sysert/screens/routes/otIstokov/usadba.dart';
import 'package:uznay_sysert/text_const.dart';
import 'package:uznay_sysert/widgets/ImageCard.dart';

class OtIstokov extends StatefulWidget {
  @override
  _OtIstokovState createState() => _OtIstokovState();
}

class _OtIstokovState extends State<OtIstokov> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(kOtIstokov,
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
          ImageCard(kOtIstokovPlotina, AssetImage("assets/images/plot.jpg"),
              PlotinaOtIstokov()),
          ImageCard(kOtIstokovZavod, AssetImage("assets/images/zavod.jpg"),
              OldZavodOtIstokov()),
          ImageCard(kOtIstokovUpravlenie, AssetImage("assets/images/uprav.jpg"),
              UpravlenieOtIstokov()),
          ImageCard(kOtIstokovHram, AssetImage("assets/images/cerkov.jpg"),
              HramOtIstokov()),
          ImageCard(kOtIstokovUsadba, AssetImage("assets/images/usad.jpg"),
              UsadbaOtIstokov()),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:uznay_sysert/screens/routes/poSledam/bobr.dart';
import 'package:uznay_sysert/screens/routes/poSledam/gora.dart';
import 'package:uznay_sysert/screens/routes/poSledam/kluchik.dart';
import 'package:uznay_sysert/screens/routes/poSledam/luga.dart';
import 'package:uznay_sysert/screens/routes/poSledam/most.dart';
import 'package:uznay_sysert/screens/routes/poSledam/musLoves.dart';
import 'package:uznay_sysert/screens/routes/poSledam/poloz.dart';
import 'package:uznay_sysert/screens/routes/poSledam/talkovKamen.dart';
import 'package:uznay_sysert/screens/routes/poSledam/vxod.dart';
import 'package:uznay_sysert/screens/routes/poSledam/zerkalo.dart';
import 'package:uznay_sysert/text_const.dart';
import 'package:uznay_sysert/widgets/ImageCard.dart';

class PoSledam extends StatefulWidget {
  @override
  _PoSledamState createState() => _PoSledamState();
}

class _PoSledamState extends State<PoSledam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(kPoSledamBazhov,
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
          ImageCard(kPoSledamKluchik, AssetImage("assets/images/potop.png"),
              KluchikPoSledam()),
          ImageCard(kPoSledamVxod, AssetImage("assets/images/vxod.png"),
              VxodPoSledam()),
          ImageCard(kPoSledamMost, AssetImage("assets/images/most_new_1.jpg"),
              MostPoSledam()),
          ImageCard(kPoSledamMusLoves,
              AssetImage("assets/images/mus_new_2.jpg"), MusLovesPoSledam()),
          ImageCard(kPoSledamBobr, AssetImage("assets/images/bobr.png"),
              BobrPoSledam()),
          ImageCard(kPoSledamZerkalo, AssetImage("assets/images/zerkalo.png"),
              ZerkaloPoSledam()),
          ImageCard(kPoSledamPoloz, AssetImage("assets/images/poloz_new_1.jpg"),
              PolozPoSledam()),
          ImageCard(kPoSledamLuga, AssetImage("assets/images/corm.jpg"),
              LugaPoSledam()),
          ImageCard(kPoSledamTalkov, AssetImage("assets/images/talik.png"),
              TalkovKamenPoSledam()),
          ImageCard(kPoSledamGora, AssetImage("assets/images/camen_new_1.jpg"),
              GoraPoSledam()),
        ],
      ),
    );
  }
}

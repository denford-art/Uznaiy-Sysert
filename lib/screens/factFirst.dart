import 'package:flutter/material.dart';
import 'package:uznay_sysert/screens/components/location.dart';
import 'package:uznay_sysert/text_const.dart';

class FactFirst extends StatefulWidget {
  @override
  _FactFirstState createState() => _FactFirstState();
}

class _FactFirstState extends State<FactFirst> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Факт', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.4,
            child: Image.asset(
              'assets/images/talk.jpg',
              height: size.height * 0.4,
              width: size.width,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: size.height * 0.7,
            width: double.infinity,
            margin: EdgeInsets.only(top: size.height * 0.35),
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
                color: Colors.white),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    kTitleFactSpichki,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Location(
                    place: kPlaceSysert,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    kTextSpichki,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

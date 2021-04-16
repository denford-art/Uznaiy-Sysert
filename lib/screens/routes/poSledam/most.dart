import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:uznay_sysert/screens/components/location.dart';
import 'package:uznay_sysert/text_const.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MostPoSledam extends StatefulWidget {
  @override
  _MostPoSledamState createState() => _MostPoSledamState();
}

class _MostPoSledamState extends State<MostPoSledam> {
  Completer<YandexMapController> _completer = Completer();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(kAboutObject,
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
      body: Stack(
        children: [
          Container(
            height: size.height * 0.35,
            child: CarouselSlider(
              items: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/most_new_1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                height: 270,
              ),
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
                    kPoSledamMost,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Location(
                    place: kPlaceNaturePark,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    kTextSpichki,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: size.height * 0.3,
                    child: YandexMap(
                      onMapCreated: _onMapCreated,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onMapCreated(YandexMapController controller) {
    _completer.complete(controller);
    controller.move(
        point: Point(latitude: 56.494098, longitude: 60.810330), zoom: 17.5);
  }
}

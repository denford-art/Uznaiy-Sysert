import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:uznay_sysert/screens/components/location.dart';
import 'package:uznay_sysert/screens/routes/otIstokov/otIstokov.dart';
import 'package:uznay_sysert/text_const.dart';

class AboutOtIstokov extends StatefulWidget {
  @override
  _AboutOtIstokovState createState() => _AboutOtIstokovState();
}

class _AboutOtIstokovState extends State<AboutOtIstokov> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(kAboutRoute,
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
                      image: AssetImage('assets/images/cerkov.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/usad.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/uprav.jpg'),
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
                    kOtIstokov,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Location(
                    place: kPlaceHistoricDistrict,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    kTextSpichki,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      child: Text(kButtonStartRoute),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xff03c03c)),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(10)),
                          textStyle: MaterialStateProperty.all(
                              TextStyle(fontSize: 20))),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OtIstokov()),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          /*  Container(
            height: size.height * 0.7,
            width: double.infinity,
            margin: EdgeInsets.only(top: size.height * 0.35),
            padding: EdgeInsets.all(30),
            child: ElevatedButton(
          child: Text("Click", style: TextStyle(fontSize: 22)),
          onPressed:(){ print("Clicked!!!");},
          ),
          ),
          */
        ],
      ),
      /*bottomSheet: Container(
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          child: Text(kButtonStartRoute),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
              padding: MaterialStateProperty.all(EdgeInsets.all(10)),
              textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30))),
          onPressed: () {},
        ),
      ),
      */
    );
  }
}

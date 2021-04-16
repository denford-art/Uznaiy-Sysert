import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:uznay_sysert/screens/components/location.dart';
import 'package:uznay_sysert/text_const.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

enum PlayerState { stopped, playing, paused }
typedef void OnError(Exception exception);

class PlotinaOtIstokov extends StatefulWidget {
  @override
  _PlotinaOtIstokovState createState() => _PlotinaOtIstokovState();
}

class _PlotinaOtIstokovState extends State<PlotinaOtIstokov> {
  Completer<YandexMapController> _completer = Completer();

  AudioPlayer _audioPlayer = AudioPlayer();
  bool isPlaying = false;
  String currentTime = "00:00";
  String completeTime = "00:00";

  @override
  void initState() {
    super.initState();

    _audioPlayer.onAudioPositionChanged.listen((Duration duration) {
      setState(() {
        currentTime = duration.toString().split(".")[0];
      });
    });

    _audioPlayer.onDurationChanged.listen((Duration duration) {
      setState(() {
        completeTime = duration.toString().split(".")[0];
      });
    });
  }

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
                      image: AssetImage('assets/images/plot.jpg'),
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
                    kOtIstokovPlotina,
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
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 80,
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.7,
                left: MediaQuery.of(context).size.width * 0.1),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                IconButton(
                  icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                  onPressed: () {
                    if (isPlaying) {
                      _audioPlayer.pause();

                      setState(() {
                        isPlaying = false;
                      });
                    } else {
                      _audioPlayer.resume();

                      setState(() {
                        isPlaying = true;
                      });
                    }
                  },
                ),
                SizedBox(
                  width: 16,
                ),
                IconButton(
                  icon: Icon(Icons.stop),
                  onPressed: () {
                    _audioPlayer.stop();

                    setState(() {
                      isPlaying = false;
                    });
                  },
                ),
                Text(
                  currentTime,
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                Text(" | "),
                Text(
                  completeTime,
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: //Icon(Icons.audiotrack),
        onPressed: () async {
          //String filePath = await FilePicker.getFilePath();

          int status =
              await _audioPlayer.play('assets/audio/plot.mp3', isLocal: true);

          if (status == 1) {
            setState(() {
              isPlaying = true;
            });
          }
        },
      ),
    );
  }

  void _onMapCreated(YandexMapController controller) {
    _completer.complete(controller);
    controller.move(
        point: Point(latitude: 56.494123, longitude: 60.809188), zoom: 18);
  }
}

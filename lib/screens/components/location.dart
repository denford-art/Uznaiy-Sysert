import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Location extends StatelessWidget {
  final String place;

  const Location({Key key, this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/images/location_pin.svg',
          width: 12,
          color: Colors.black,
        ),
        SizedBox(width: 10),
        Text(
          place,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}

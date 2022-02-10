import 'package:flutter/material.dart';

class WindSpeed extends StatelessWidget {
  const WindSpeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 25,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "5",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w200),
            ),
            Text(
              "km/hr",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w200),
            ),
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 25,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "3",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w200),
            ),
            Text(
              "km/hr",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w200),
            ),
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 25,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "20",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w200),
            ),
            Text(
              "km/hr",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w200),
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class InfoToday extends StatelessWidget {
  const InfoToday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.wb_sunny,
          color: Colors.white,
          size: 60,
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          children: [
            Text(
              "14 °F",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w200),
            ),
            Text(
              "LIGHT SNOW",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w200),
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.search,
          color: Colors.white,
          size: 30,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Enter City Name",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ],
    );
  }
}

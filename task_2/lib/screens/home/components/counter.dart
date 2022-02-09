import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 50;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      width: 160,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => {
              setState(() {
                _count--;
              }),
            },
            child: Icon(
              Icons.remove,
              size: 40,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "$_count",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () => {
              setState(() {
                _count++;
              }),
            },
            child: Icon(
              Icons.add,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}

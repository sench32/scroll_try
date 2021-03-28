import 'package:flutter/material.dart';

class MyLWSV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListWheelScrollView(
        physics: FixedExtentScrollPhysics(),
        diameterRatio: 1.5,
        squeeze: 1.1,
        perspective: 0.01,
        itemExtent: 100,
        overAndUnderCenterOpacity: 0.5,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Center(
              child: Text(
                '100',
                style: TextStyle(fontSize: 45, color: Colors.black),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Center(
              child: Text(
                '100',
                style: TextStyle(fontSize: 45, color: Colors.black),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Center(
              child: Text(
                '100',
                style: TextStyle(fontSize: 45, color: Colors.black),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Center(
              child: Text(
                '100',
                style: TextStyle(fontSize: 45, color: Colors.black),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Center(
              child: Text(
                '100',
                style: TextStyle(fontSize: 45, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

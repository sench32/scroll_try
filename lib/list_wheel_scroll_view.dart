import 'package:flutter/material.dart';

class MyLWSV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListWheelScrollView(
        itemExtent: 100,
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

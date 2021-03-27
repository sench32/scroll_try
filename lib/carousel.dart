import 'package:flutter/material.dart';

import 'package:scroll_snap_list/scroll_snap_list.dart';

class MyCarouselPage extends StatefulWidget {
  MyCarouselPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyCarouselPage> {
  List<int> data = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1];

  Widget _buildItemList(BuildContext context, int index) {
    if (index == data.length)
      return Center(
        child: CircularProgressIndicator(),
      );
    return Container(
      width: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Colors.yellow,
            width: 200,
            height: 60,
            child: Center(
              child: Text(
                '${data[index]}\$',
                style: TextStyle(fontSize: 15.0),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Vertical list',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Row(
          children: [
            Expanded(
                child: ScrollSnapList(
              scrollDirection: Axis.vertical,
              itemBuilder: _buildItemList,
              itemSize: 50,
              focusOnItemTap: true,
              dynamicItemSize: true,
              onReachEnd: () {
                print('Done!');
              },
              itemCount: data.length,
              onItemFocus: (int) {},
            ))
          ],
        ),
      ),
    );
  }
}

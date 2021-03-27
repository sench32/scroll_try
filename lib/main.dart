import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Scroll_Try'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> data = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1];

  Widget _buildItemList(BuildContext context, int index) {
    if (index == data.length)
      return Center(
        child: CircularProgressIndicator(),
      );
    return Container(
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.yellow,
            width: 50,
            height: 50,
            child: Center(
              child: Text(
                '${data[index]}',
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
    return SafeArea(
      child: Scaffold(
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
                duration: 150,
                scrollDirection: Axis.vertical,
                itemBuilder: _buildItemList,
                itemSize: 50,
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
      ),
    );
  }
}

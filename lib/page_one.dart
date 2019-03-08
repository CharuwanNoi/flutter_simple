import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  final List<Data> dataList;
  PageOne({
    Key key,
    this.dataList,
  }) : super(key: key);

  @override
  PageOneState createState() => PageOneState();
}

class PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        children: new List<Widget>.generate(7, (index) {
          return new GridTile(
            child: new Card(
              color: Colors.green.shade400,
              child: new Center(
                child: Text('tile $index'),
              )
            ),
          );
        }),
      ),
    );
  }
}

class Data {
  final int id;
  bool expanded;
  final String title;
  Data(this.id, this.expanded, this.title);
}
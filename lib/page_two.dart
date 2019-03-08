import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  final List<Data> dataList;
  PageTwo({
    Key key,
    this.dataList,
  }) : super(key: key);

  @override
  PageTwoState createState() => PageTwoState();
}

class PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      body: Center(
        child: Text('Comming soon...'),
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
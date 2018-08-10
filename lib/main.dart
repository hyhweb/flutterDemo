import 'package:flutter/material.dart';
import 'index/index.dart';
import 'list/listPage.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "我的应用",
      home: new Index(),
    );
  }

}

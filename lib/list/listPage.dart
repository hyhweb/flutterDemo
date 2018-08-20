import 'package:flutter/material.dart';

import '../list/focus.dart';

class ListPage extends StatefulWidget {
  @override
  ListState createState() => new ListState();
}

class ListState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new DefaultTabController(
          length: 3,
          child: new Scaffold(
              appBar: new AppBar(
              title: new Text('列表'),
              centerTitle:true,
              bottom: new TabBar(
                labelColor:Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  new Tab(text: "关注"),
                  new Tab(text: "推荐"),
                  new Tab(text: "热榜"),
                ],
              ),
            ),
            body: new TabBarView(
              children: <Widget>[
                new FocusList(),
                new Text('22'),
                new Text('33')
              ],
            ),
          ),
      )
      );

  }
}


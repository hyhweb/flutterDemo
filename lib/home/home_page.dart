import 'package:flutter/material.dart';
import '../global_config.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text('首页'),
            centerTitle:true,
            actions: <Widget>[
              new Container(
                child:  new Text('首页'),
              )
            ],
          ),
          body: new Center(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text('首页'),
                  new RaisedButton(onPressed: (){
                  },child: new Text('点击'),)
                ],
              )
          ),
        ),
        theme: GlobalConfig.themeData
    );
  }

}
import 'package:flutter/material.dart';
class DetailPage extends StatefulWidget{
  DetailPage ({Key key,this.title}):super(key:key);//接收从上一个页面传来的值
  final String title;
  @override
  State<StatefulWidget> createState() {
    return new _DetailPageState(title: title);
  }
}
class _DetailPageState extends State<DetailPage>{
  _DetailPageState({Key key,this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(appBar: new AppBar(title: new Text("第二页 $title"),),);//第二个页面的布局很简单，只有最上面的导航栏
  }
}
import 'package:flutter/material.dart';
import '../list/detail.dart';
class FocusList extends StatefulWidget{
  @override
  _ListDemoState createState(){
    return new _ListDemoState();
  }
}
class _ListDemoState extends State<FocusList>{
//buildListTile相当于ListView的Adapter
  Widget buildListTile(BuildContext context,String item){
    return new ListTile(
      isThreeLine: true,//子item的是否为三行
      dense: false,
      leading: new CircleAvatar(child: new Text(item),),//左侧首字母图标显示，不显示则传null
      title: new Text('子item的标题'),//子item的标题
      subtitle: new Text('子item的内容'),//子item的内容
      trailing: new Image(
        image: new NetworkImage("https://pic2.zhimg.com/50/v2-6416ef6d3181117a0177275286fac8f3_hd.jpg"),
        width: 100.0,
        height: 100.0,
      ),//显示右侧的箭头，不显示则传null
        onTap:(){
          Navigator.of(context).push(new MaterialPageRoute(
              builder: (context) {
                return new DetailPage();
              }
          ));
        },
    );
  }
  @override
  Widget build(BuildContext context) {
    List<String> items=<String>['A','B','C','D','E','F','G','H','J'];
    Iterable<Widget> listTitles=items.map((String item){//将items的内容设置给Adapter
      return buildListTile(context,item);
    });
    listTitles=ListTile.divideTiles(context: context,tiles: listTitles);//给Listview设置分隔线
    return new Scaffold(
      body: new Scrollbar(child: new ListView(
        children: listTitles.toList(),//添加ListView控件
      )),);
  }
}
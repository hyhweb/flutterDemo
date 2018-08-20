/**
 *输入文本
 */
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';


class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() {
    return new LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  // material包下的类 可编辑文本控制器 text将被作为初始文本显示在TextField中
//  final TextEditingController _controller = new TextEditingController(text: "duo_shine");
  //text将被作为初始文本显示在TextField中
  Map results = {
    'userName': '',
    'passWord':''
  };
  final TextEditingController userNameController = new TextEditingController
      .fromValue(new TextEditingValue(text: ""));

  final TextEditingController passWordController = new TextEditingController.fromValue(new TextEditingValue(text:''));



  List _fruits = ["Apple", "Banana", "Pineapple", "Mango", "Grapes"];

  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _selectedFruit;

  @override
  void initState() {
    _dropDownMenuItems = buildAndGetDropDownMenuItems(_fruits);
    _selectedFruit = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> buildAndGetDropDownMenuItems(List fruits) {
    List<DropdownMenuItem<String>> items = new List();
    for (String fruit in fruits) {
      items.add(new DropdownMenuItem(value: fruit, child: new Text(fruit)));
    }
    return items;
  }

  void changedDropDownItem(String selectedFruit) {
    setState(() {
      _selectedFruit = selectedFruit;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('登录'),
      ),
      body: new Container(
        padding: const EdgeInsets.all(10.0),
        child: new Center(
          child: new Column(
           // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new TextField(
                controller: userNameController,
                decoration: new InputDecoration(
                  hintText: "用户名",
                ),
                onSubmitted: (String str) {
                  setState(() {
                    results["userName"] = str;
                  });
                },
              ),
             TextField(
               controller: passWordController,
               decoration: InputDecoration(
                 hintText: "输入密码"
               ),

             ),

              new Text(results["userName"]),
              new Switch(value: false, onChanged:null),
              new RaisedButton(
                onPressed: () {
                  setState(() {
                    results["userName"] = userNameController.text;
                    results["passWord"] = passWordController.text;
                  });

                 // userNameController.clear(); //将值设置为空
                  showDialog(
                      context: context,
                      //_controller.text 用户正在编辑的当前字符串
                      child: new AlertDialog(
                        title: new Text("用户名"),
                        content: new Text(results["userName"]+"/"+results["passWord"]),
                      ));
                },
                child: new Text("登录"),
              ),
          new DropdownButton(
          value: _selectedFruit,
          items: _dropDownMenuItems,
          onChanged: changedDropDownItem,
        ),
            ],
          ),


        ),
      ),
    );
  }
}
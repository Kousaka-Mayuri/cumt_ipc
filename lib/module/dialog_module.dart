import 'package:cumt_ipc/expand_page/curve_page.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class act_dialog extends StatefulWidget {
  const act_dialog({Key key}) : super(key: key);

  @override
  _act_dialogState createState() => _act_dialogState();
}

class _act_dialogState extends State<act_dialog> {
  String time = "1";
  String a = '1';
  String b = '5';
  String c = '60';
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("提示：请问以多少秒为一个单位?"),
      content: DropdownButton(
        value: time,
        onChanged: (String value){
          setState(() {
            time = value;
          });
        },
        items: [
          DropdownMenuItem(child: Text("1"),value: a,),
          DropdownMenuItem(child: Text("5"),value: b,),
          DropdownMenuItem(child: Text("60"),value: c,),
        ],
      ),
      actions: [
        ElevatedButton(onPressed: (){
          Navigator.of(context).push(
              CupertinoPageRoute(builder: (context)=>curve_page(int.parse(time))));
        }, child: Text("确定")),
        ElevatedButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: Text("返回")),
      ],
    );
  }
}

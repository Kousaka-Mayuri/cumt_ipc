import 'package:cumt_ipc/expand_page/history_expand1.dart';
import 'package:cumt_ipc/expand_page/history_expand2.dart';
import 'package:cumt_ipc/module/button_module.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:date_time_picker/date_time_picker.dart';

class histroy_page extends StatefulWidget {
  const histroy_page({Key key}) : super(key: key);

  @override
  _histroy_pageState createState() => _histroy_pageState();
}

class _histroy_pageState extends State<histroy_page> {
  String a = "分";
  String b = "时";
  String c = "日";
  String unit="分";
  var start;
  var end;

  @override
  Widget build(BuildContext context) {
    Future<void> chooseStart()async{
      if(unit == a|| unit == b){
       final TimeOfDay date =await showTimePicker(context: context, initialTime:TimeOfDay.fromDateTime(now));
        setState(() {
          start = date;
        });
      }
      else{
        final DateTime date =await showDatePicker(context: context, initialDate: now,
            firstDate: DateTime(2020,1), lastDate: now);
        setState(() {
          start = date;
        });
      }
    }
    Future<void> chooseEnd()async{
      if(unit == a|| unit == b){
        final date = await showTimePicker(context: context, initialTime:TimeOfDay.fromDateTime(now));
        setState(() {
          end = date;
        });
      }
      else{
        final date = await  showDatePicker(context: context, initialDate: now,
           firstDate: DateTime(2020,1), lastDate: now);
        setState(() {
          end = date;
        });
      }
    }
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            login_button("选择单位"),
            DropdownButton(
              onChanged: (value){
                setState(() {
                  unit = value;
                });
              },
                value: unit,
                items: [
                  DropdownMenuItem(
                      value: a,
                      child: Text(a)
                  ),
                  DropdownMenuItem(
                      value: b,
                      child: Text(b)
                  ),
                  DropdownMenuItem(
                      value: c,
                      child: Text(c)
                  ),

            ]),
            Text("您选择的单位："+unit),
            Container(height: 50.h,),
            GestureDetector(
              onTap: chooseStart,
              child: login_button("起始时间"),
            ),
            Text("您选择的起始时间："+start.toString()),
            Container(height: 50.h,),
            GestureDetector(
              onTap: chooseEnd,
              child: login_button("结束时间"),
            ),
            Text("您选择的结束时间："+end.toString()),
            Container(height: 50.h,),
            GestureDetector(
              child: login_button("查询数据"),
              onTap: (){
               if(start.toString() == "null"||end.toString() == "null"){
                showDialog(context: context,builder: (context){
                  return AlertDialog(
                    content: Text("有日期未选择"),
                    actions: [
                      ElevatedButton(onPressed: (){
                        Navigator.of(context).pop();
                      }, child:Text("确定"))
                    ],
                  );
                });
               }
               else{
                 Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>
                     history1_expand(
                       start: start.toString(),
                       end: end.toString(),
                       unit: unit,
                     )
                 ));
               }
              },
            ),
            Container(height: 50.h,),
            GestureDetector(
              child: login_button("查询图表"),
              onTap: (){
                if(start.toString() == "null"||end.toString() == "null"){
                  showDialog(context: context,builder: (context){
                    return AlertDialog(
                      content: Text("有日期未选择"),
                      actions: [
                        ElevatedButton(onPressed: (){
                          Navigator.of(context).pop();
                        }, child:Text("确定"))
                      ],
                    );
                  });
                }
                else{
                  Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>
                      history2_expand(
                        start: start.toString(),
                        end: end.toString(),
                        unit: unit,
                      )
                  ));
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
DateTime now = new DateTime.now();
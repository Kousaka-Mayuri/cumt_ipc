import 'package:cumt_ipc/module/fakeTable_module.dart';
import 'package:cumt_ipc/module/text_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class history1_expand extends StatefulWidget {
  final String start;
  final String end;
  final String unit;
  const history1_expand({
    this.start,this.end,this.unit,
    Key key}) : super(key: key);

  @override
  _history_expandState createState() => _history_expandState();
}

class _history_expandState extends State<history1_expand> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: AppBar(
            elevation: 1.0,
            iconTheme: IconThemeData(
                color: Colors.black
            ),
            title: Text("历史数据",style: TextStyle(color: Colors.black),),
            backgroundColor: Colors.white,
          ),
        ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(height: 10.h,),
                Text("现在查询的是"+widget.start+"到"+widget.end),
                Container(height: 10.h,),
                Text("此时单位为"+widget.unit),
                title_text("1"),
                fakeTable_module([]),
                title_text("2"),
                fakeTable_module([]),
                title_text("3"),
                fakeTable_module([]),
                title_text("4"),
                fakeTable_module([])
              ],
            ),
          ),
        ),
      ),
    );
  }
}

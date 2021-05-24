import 'package:flutter/material.dart';

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class fakeTable_module extends StatefulWidget {
  final List text;
  const fakeTable_module(this.text,{Key key}) : super(key: key);
  @override
  _table_moduleState createState() => _table_moduleState();
}

class _table_moduleState extends State<fakeTable_module> {
  var rng = new Random();
  var count =0;
  Timer _timer;
  String getV(){
    return (6050-rng.nextDouble()*100).toStringAsFixed(2)+"V";
  }
  getRanData(double base,String unit){
    return (rng.nextDouble()*base).toStringAsFixed(2)+unit;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  void dispose() {
    // TODO: implement dispose

  }
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(

          dataTextStyle: TextStyle(
              color: Colors.black
          ),
          columns: [
            DataColumn(label: Text("性能参数")),
            DataColumn(label: Text("电机参数")),
            DataColumn(label: Text("温度参数")),
            DataColumn(label: Text("状态参数")),
          ],
          rows: [
            dataCell_module(["风机静压："+getRanData(1.6, "KPa"),"电压AB："+getV(),"前级定温1："+getRanData(56, "℃"),"PLC连接：是",]),
            dataCell_module(["风机全压："+getRanData(1.7, "KPa"),"电压BC："+getV(),"前级定温2："+getRanData(56, "℃"),"进线柜合闸：",]),
            dataCell_module(["风机风量："+getRanData(9200, "m^3/s"),"电压AC："+getV(),"前级定温3："+getRanData(56, "℃"),"进线柜故障：",]),
            dataCell_module(["风机效率："+getRanData(68, "%"),"前级电流A："+getRanData(17, "A"),"前级轴温1："+getRanData(41, "℃"),"前级启动柜：",]),
            dataCell_module(["前级振动X："+getRanData(1.4, "mm/s"),"前级电流C："+getRanData(19, "A"),"前级轴温2："+getRanData(41, "℃"),"后级启动柜：",]),
            dataCell_module(["前级振动Y："+getRanData(1.2, "mm/s"),"前级功率："+getRanData(180, "KW"),"后级定温1："+getRanData(60, "℃"),"联络柜：",]),
            dataCell_module(["后级振动X："+getRanData(1.8, "mm/s"),"后继电流A："+getRanData(18, "A"),"后级定温2："+getRanData(60, "℃"),"状态07：",]),
            dataCell_module(["后级振动Y："+getRanData(2.1, "mm/s"),"后级电流C："+getRanData(20, "A"),"后级定温3："+getRanData(60, "℃"),"状态07：",]),
            dataCell_module(["","后级功率："+getRanData(190, "KW"),"后级轴温1："+getRanData(45, "℃"),"状态07",]),
            dataCell_module(["","","后级轴温2："+getRanData(45, "℃"),"状态07",]),
          ]
      ),
    );
  }
}



dataCell_module(List data){
  List<DataCell> cellList = [];
  List<Widget> intoWidget = [];
  data.forEach((element) {
    intoWidget.add(Text(element));
  });
  cellList = intoWidget.map((e) {
    return DataCell(e);}
  ).toList();
  return DataRow(
      cells: cellList
  );
}
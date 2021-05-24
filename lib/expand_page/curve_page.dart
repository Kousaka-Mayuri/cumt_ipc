import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_screenutil/flutter_screenutil.dart';
class curve_page extends StatefulWidget {
  final int timeChoose;
  const curve_page(this.timeChoose,{Key key}) : super(key: key);

  @override
  _curve_pageState createState() => _curve_pageState();
}

class _curve_pageState extends State<curve_page> {
  Timer _timer;

  var rng1 = new Random();
  var rng2 = new Random();
  @override
  void initState() {
    int time = 0;
    // TODO: implement initState
    super.initState();
    _timer = Timer.periodic(Duration(seconds: widget.timeChoose), (timer) {
      time++;

    setState(() {
      serial1data.add(SeriesDatas(time, rng1.nextInt(20).toDouble()));
      serial2data.add(SeriesDatas(time,rng2.nextInt(20).toDouble()));
      serial3data.add(SeriesDatas(time,rng2.nextInt(20).toDouble()));
    });
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    serial1data.clear();
    serial2data.clear();
    serial3data.clear();
    serial1data.add(SeriesDatas(0, 0));
    serial2data.add(SeriesDatas(0, 0));
    serial3data.add(SeriesDatas(0, 0));
  }
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
          title: Text("数据曲线",style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.white,
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 10.h, 0, 0),
                child: Text("此时为"+widget.timeChoose.toString()+"s刷新一次"),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20.h, 0, 0),
                height: 400.h,
                child: charts.LineChart(
                  seriesList1,
                  animate: true,
                  behaviors: [
                    new charts.SeriesLegend(
                      // 图例位置 在左侧start 和右侧end
                      position: charts.BehaviorPosition.end,
                      // 图例条目  [horizo​​ntalFirst]设置为false，图例条目将首先作为新行而不是新列增长
                      horizontalFirst: false,
                      // 每个图例条目周围的填充Padding
                      cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                      // 显示度量
                      showMeasures: true,
                      // 度量格式
                      measureFormatter: (num value) {
                        return value == null ? '-' : '${value}k';
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20.h, 0, 0),
                height: 400.h,
                child: charts.LineChart(
                  seriesList2,
                  animate: true,
                  behaviors: [
                    new charts.SeriesLegend(
                      position: charts.BehaviorPosition.end,
                      horizontalFirst: false,
                      cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                      showMeasures: true,
                      measureFormatter: (num value) {
                        return value == null ? '-' : '${value}k';
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20.h, 0, 0),
                height: 400.h,
                child: charts.LineChart(
                  seriesList3,
                  animate: true,
                  behaviors: [
                    new charts.SeriesLegend(
                      position: charts.BehaviorPosition.end,
                      horizontalFirst: false,
                      cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                      showMeasures: true,
                      measureFormatter: (num value) {
                        return value == null ? '-' : '${value}k';
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}

class SeriesDatas {
  final int time;
  final double data;
  SeriesDatas(this.time, this.data);
}
final serial1data = [
  new SeriesDatas(0, 0),
];
final serial2data = [
  new SeriesDatas(0, 0),
];
final serial3data = [
  new SeriesDatas(0, 0),
];
List<charts.Series<SeriesDatas, int>> seriesList1 = [
  new charts.Series<SeriesDatas, int>(
    id: '风机实时压力',
    colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
    domainFn: (SeriesDatas sales, _) => sales.time,
    measureFn: (SeriesDatas sales, _) => sales.data,
    data: serial1data,
  ),

];
List<charts.Series<SeriesDatas, int>> seriesList2 = [
  new charts.Series<SeriesDatas, int>(
    id: '风机实时风量',
    colorFn: (_, __) => charts.MaterialPalette.yellow.shadeDefault,
    domainFn: (SeriesDatas sales, _) => sales.time,
    measureFn: (SeriesDatas sales, _) => sales.data,
    data: serial2data,
  ),

];
List<charts.Series<SeriesDatas, int>> seriesList3 = [
  new charts.Series<SeriesDatas, int>(
    id: '风机实时振动',
    colorFn: (_, __) => charts.MaterialPalette.black,
    domainFn: (SeriesDatas sales, _) => sales.time,
    measureFn: (SeriesDatas sales, _) => sales.data,
    data: serial3data,
  ),

];

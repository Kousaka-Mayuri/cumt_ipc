import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_screenutil/flutter_screenutil.dart';
class fake_curve extends StatefulWidget {
  const fake_curve({Key key}) : super(key: key);

  @override
  _fake_curveState createState() => _fake_curveState();
}
var rng = new Random();
class _fake_curveState extends State<fake_curve> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
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
                seriesList3,
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
          ],
        )
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
  for(int i = 1;i<=30;i++)
    SeriesDatas(i, rng.nextDouble()),
];
final serial2data = [
  new SeriesDatas(0, 0),
  for(int i = 1;i<=30;i++)
    SeriesDatas(i, rng.nextDouble()),
];
final serial3data = [
  new SeriesDatas(0, 0),
  for(int i = 1;i<=30;i++)
    SeriesDatas(i, rng.nextDouble()),
];
List<charts.Series<SeriesDatas, int>> seriesList1 = [
  new charts.Series<SeriesDatas, int>(
    id: '风机压力',
    colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
    domainFn: (SeriesDatas sales, _) => sales.time,
    measureFn: (SeriesDatas sales, _) => sales.data,
    data: serial1data,
  ),

];
List<charts.Series<SeriesDatas, int>> seriesList2 = [
  new charts.Series<SeriesDatas, int>(
    id: '风机风量',
    colorFn: (_, __) => charts.MaterialPalette.yellow.shadeDefault,
    domainFn: (SeriesDatas sales, _) => sales.time,
    measureFn: (SeriesDatas sales, _) => sales.data,
    data: serial2data,
  ),

];
List<charts.Series<SeriesDatas, int>> seriesList3 = [
  new charts.Series<SeriesDatas, int>(
    id: '风机振动',
    colorFn: (_, __) => charts.MaterialPalette.black,
    domainFn: (SeriesDatas sales, _) => sales.time,
    measureFn: (SeriesDatas sales, _) => sales.data,
    data: serial3data,
  ),

];

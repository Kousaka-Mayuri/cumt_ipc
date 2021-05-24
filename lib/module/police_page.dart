import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class police_page extends StatefulWidget {
  final String robot;
  const police_page(this.robot,{Key key}) : super(key: key);

  @override
  _police_pageState createState() => _police_pageState();
}

class _police_pageState extends State<police_page> {
  String po1="125℃";
  String po2="75℃";
  String po3="75℃";
  String po4="8mm/s";
  String po5="80℃";
  TextEditingController po1Con;
  TextEditingController po2Con;
  TextEditingController po3Con;
  TextEditingController po4Con;
  TextEditingController po5Con;
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
              height: 100.h,
              alignment: Alignment.center,
              child: Text("某某矿"+widget.robot+"主通风机智能在线监控系统",
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.w
                ),),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 3.w,color: Colors.black
                  )
              ),
              width: 400.w,
              height: 160.h,
              child: ListView(

                children: [
                  Container(height: 5.h,),
                  Container(
                    alignment: Alignment.center,
                    child: Text("警报：电机轴温超出正常范围"),
                  ),
                  Container(height: 5.h,),
                  Container(
                    alignment: Alignment.center,
                    child: Text("警报：振动温度超出正常范围"),
                  ),
                  Container(height: 5.h,),
                  Container(
                    alignment: Alignment.center,
                    child: Text("预警：风机轴温有超出正常范围的可能性"),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20.h, 0, 0),
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 3.w,color: Colors.black
                  )
              ),
              width: 400.w,
              height: 500.h,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text("原报警阈值",style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.w
                    )),
                    Divider(height: 5.h,thickness:3.w,color: Colors.black,),
                    Container(
                        width: 400.w,
                        height: 130.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("风机定温："+po1,style: textS,),
                            Text("电机轴温："+po2,style: textS,),
                            Text("振动："+po3,style: textS,),
                            Text("风机轴温："+po4,style: textS,),
                            Text("电机温度："+po5,style: textS,)
                          ],
                        )
                    ),
                    Divider(height: 5.h,thickness:3.w,color: Colors.black,),
                    Text("报警值设置窗口",style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.w
                    )),
                    Divider(height: 5.h,thickness:3.w,color: Colors.black,),
                    Container(
                      width: 350.w,
                      height: 60.h,
                      child: TextField(
                        onChanged: (String value){
                          po1 = value;
                        },
                        controller: po1Con,
                        decoration: InputDecoration(
                            labelText: "风机定温"
                        ),
                      ),
                    ),
                    Container(
                      width: 350.w,
                      height: 60.h,
                      child: TextField(
                        onChanged: (String value){
                          po2 = value;
                        },
                        controller: po2Con,
                        decoration: InputDecoration(
                            labelText: "电机轴温"
                        ),
                      ),
                    ),
                    Container(
                      width: 350.w,
                      height: 60.h,
                      child: TextField(
                        onChanged: (String value){
                          po3 = value;
                        },
                        controller: po3Con,
                        decoration: InputDecoration(
                            labelText: "振动"
                        ),
                      ),
                    ),
                    Container(
                      width: 350.w,
                      height: 60.h,
                      child: TextField(
                        onChanged: (String value){
                          po4 =value;
                        },
                        controller: po4Con,
                        decoration: InputDecoration(
                            labelText: "风机轴温"
                        ),
                      ),
                    ),
                    Container(
                      width: 350.w,
                      height: 60.h,
                      child: TextField(
                        onChanged: (String value){
                          po5 =value;
                        },
                        controller: po5Con,
                        decoration: InputDecoration(
                            labelText: "电机温度"
                        ),
                      ),
                    ),
                    Container(height: 5.h,),
                    ElevatedButton(onPressed: (){
                      setState(() {

                      });
                    }, child: Text("修改"))
                  ],
                ),
              )
            )
          ],
        ),
    );
  }
}

var textS = TextStyle(
    fontSize: 18.sp,
fontWeight: FontWeight.bold,
letterSpacing: 2.w
);
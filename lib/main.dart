import 'package:cumt_ipc/function.dart';
import 'package:cumt_ipc/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    initData(context);
    return ScreenUtilInit(
        designSize: Size(500,1000),
        builder: ()=>
        MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: login_page(),
        )
    );
  }
}


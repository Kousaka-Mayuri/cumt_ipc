import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class modify_page extends StatefulWidget {
  const modify_page({Key key}) : super(key: key);

  @override
  _modify_pageState createState() => _modify_pageState();
}

class _modify_pageState extends State<modify_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: AppBar(
          elevation: 1.0,
          iconTheme: IconThemeData(
              color: Colors.black
          ),
          title: Text("修改用户信息",style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.white,
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Container(
          width: 400.w,
          child: Column(

            children: [
              TextField(
                decoration: InputDecoration(
                    labelText: "修改用户名"
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "修改密保问题"
                ),
              ),
              Container(
                height: 50.h,
              ),
              ElevatedButton(onPressed: (){
                Navigator.of(context).pop();
              }, child: Text("确定"))
            ],
          ),
        ),
      )
    );
  }
}

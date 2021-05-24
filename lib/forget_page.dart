import 'package:cumt_ipc/module/button_module.dart';
import 'package:cumt_ipc/module/text_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class forget_page extends StatelessWidget {
  const forget_page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black
          ),
          backgroundColor: Colors.white,
          title: Text(
              "忘记密码",
            style: TextStyle(
              color: Colors.black
            ),
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              title_text("密保问题："),
                  Container(
                    width: 300.w,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          labelText: "密保答案",
                      ),
                    ),
                  ),
              Container(
                height: 40.h,
              ),
              Container(
                child: TextButton(
                  child: Text(
                    "确认"
                  ),
                )
              )
            ],
          ),
      ),
    );
  }
}

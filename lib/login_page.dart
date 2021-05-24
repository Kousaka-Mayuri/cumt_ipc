import 'package:cumt_ipc/forget_page.dart';
import 'package:cumt_ipc/main_page.dart';
import 'package:cumt_ipc/module/button_module.dart';
import 'package:cumt_ipc/module/text_module.dart';
import 'package:cumt_ipc/module/textfield_module.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class login_page extends StatefulWidget {
  const login_page({Key key}) : super(key: key);

  @override
  _login_pageState createState() => _login_pageState();
}
TextEditingController username = new TextEditingController();
TextEditingController password = new TextEditingController();
class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 500.w,
        height: 1000.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: 500.w,
              child: Column(
                children: [
                  title_text("欢迎访问风机监控系统!"),
                  Container(
                    height: 20.h,
                  ),
                  title_text("请登录"),
                  Container(
                    height: 80.h,
                  ),
                  login_textfield('用户名：',
                  textEditingController: username,),
                  Container(
                    height: 40.h,
                  ),
                  login_textfield('密    码：',
                  textEditingController: password,),
                  Container(
                    height: 40.h,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                          CupertinoPageRoute(builder: (context)=>main_page()));
                    },
                    child: login_button("登录"),
                  ),
                  Container(
                    height: 40.h,
                  ),
                  GestureDetector(
                    onTap: (){
                        Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>forget_page()));
                    },
                    child: Text("忘记用户名密码？",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline
                    ),),
                  ),
                  Container(
                    height: 100.h,
                  ),
                  title_text("中国矿业大学")
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

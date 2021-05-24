import 'package:cumt_ipc/expand_page/modify_page.dart';
import 'package:cumt_ipc/expand_page/userList_page.dart';
import 'package:cumt_ipc/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class user_page extends StatelessWidget {
  const user_page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: 400.w,
              height: 100.h,
              decoration: BoxDecoration(
                border: Border.all(width: 1.w,color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(10.w))
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("用户名：13815990268"),
                    Container(height:20.h ,),
                    Text("权限：普通用户")
                  ],
                )
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(0, 200.h, 0, 0),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.w,color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10.w))
              ),

              width: 400.w,
              child: Column(
                children: [
                  ListTile(
                    onTap: (){
                      Navigator.of(context).push(CupertinoPageRoute(
                          builder: (context)=>modify_page()));
                    },
                    leading: Icon(Icons.person),
                    title: Text("个人资料"),
                    subtitle: Text("查看/修改个人信息"),
                  ),
                  ListTile(
                    onTap: (){
                      Navigator.of(context).push(CupertinoPageRoute(
                          builder: (context)=>userList_page()));
                    },
                    leading: Icon(Icons.supervised_user_circle_rounded),
                    title: Text("用户管理"),
                    subtitle: Text("修改/删除用户"),
                    trailing: Text("仅管理员可用"),
                  ),
                  ListTile(
                    onTap: (){
                      Navigator.of(context).pushAndRemoveUntil(
                          CupertinoPageRoute(builder: (context)=>login_page()),
                              (route) => false);
                    },
                    leading: Icon(Icons.arrow_back_outlined),
                    title: Text("注销登录"),

                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

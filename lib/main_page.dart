import 'package:cumt_ipc/bar_pages/history_page.dart';
import 'package:cumt_ipc/bar_pages/home_page.dart';
import 'package:cumt_ipc/bar_pages/information_page.dart';
import 'package:cumt_ipc/bar_pages/online_page.dart';
import 'package:cumt_ipc/bar_pages/user_page.dart';
import 'package:flutter/material.dart';

class main_page extends StatefulWidget {
  const main_page({Key key}) : super(key: key);

  @override
  _main_pageState createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {
  List page = [
    home_page(),
    online_page(),
    histroy_page(),
    information_page(),
    user_page()
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.amber,
        onTap: (int index)
        {
          setState(() {
            currentIndex = index;
          });
        },
          items: [
            BottomNavigationBarItem(
                label: "首页",
                icon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(
                label: "在线数据",
                icon:Icon(Icons.adjust)
            ),
            BottomNavigationBarItem(
                label: "历史数据",
                icon:Icon(Icons.info)
            ),
            BottomNavigationBarItem(
                label: "信息功能",
                icon:Icon(Icons.data_usage)
            ),
            BottomNavigationBarItem(
                label: "我的",
                icon:Icon(Icons.account_box)
            )
          ]
      ),
      body:page[currentIndex]
    );
  }
}

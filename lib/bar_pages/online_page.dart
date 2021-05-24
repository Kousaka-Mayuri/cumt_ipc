import 'package:cumt_ipc/expand_page/curve_page.dart';
import 'package:cumt_ipc/module/button_module.dart';
import 'package:cumt_ipc/module/dialog_module.dart';
import 'package:cumt_ipc/module/table_module.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class online_page extends StatefulWidget {
  const online_page({Key key}) : super(key: key);

  @override
  _online_pageState createState() => _online_pageState();
}

class _online_pageState extends State<online_page> with SingleTickerProviderStateMixin {
  TabController _tabController;

  void initState() {
    super.initState();
    _tabController = new TabController(initialIndex:0,length: 2, vsync: this);
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: TabBar(
            controller: _tabController,
            indicatorColor:Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 0.01,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: "1号机在线监测"),
              Tab(text: "2号机在线检测"),
            ],

          ),
          backgroundColor: Colors.white,
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: [
          Container(
            child: Column(
              children: [
                table_module([""]),
                Container(height: 20.h,),
                GestureDetector(
                  onTap: (){
                    showDialog(context: context, builder: (context){
                      return act_dialog();
                    });
                  },
                  child: curve_button(),
                )
              ],
            )
          ),
          Container(
              child: Column(
                children: [
                  table_module([""]),
                  Container(height: 20.h,),
                  GestureDetector(
                    onTap: (){
                      showDialog(context: context, builder: (context){
                        return act_dialog();
                      });
                    },
                    child: curve_button(),
                  )
                ],
              )
          ),
        ],
      )
    );
  }
}

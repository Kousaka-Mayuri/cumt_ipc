import 'package:cumt_ipc/module/police_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class information_page extends StatefulWidget {
  const information_page({Key key}) : super(key: key);

  @override
  _information_pageState createState() => _information_pageState();
}

class _information_pageState extends State<information_page>
    with SingleTickerProviderStateMixin{
  TabController _tabController;

  void initState() {
    super.initState();
    _tabController = new TabController(initialIndex:0,length: 2, vsync: this);
    _tabController.addListener(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              Tab(text: "1号机"),
              Tab(text: "2号机"),
            ],

          ),
          backgroundColor: Colors.white,
        ),
      ),
      body:TabBarView(
        controller: _tabController,
        children: [
          police_page("1"),
          police_page("2")
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class userList_page extends StatefulWidget {
  const userList_page({Key key}) : super(key: key);

  @override
  _userList_pageState createState() => _userList_pageState();
}
List user = ["13815990268","13338829029","12477780098","12345678888"];
class _userList_pageState extends State<userList_page> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  Widget userView(List list,BuildContext context){
    List<Widget> _list = [];
    list.forEach((element) {
      _list.add(
          ListTile(
            onTap: (){
              showDialog(context: context, builder:(context){
                return AlertDialog(
                  title: Text("确定删除该用户吗"),
                  actions: [
                    ElevatedButton(onPressed: (){
                      setState(() {
                        user.remove(element);
                      });
                      Navigator.of(context).pop();
                    }, child: Text("确定")),
                    ElevatedButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, child: Text("取消")),
                  ],
                );
              });
            },
            leading: Icon(Icons.person),
            title: Text(element),
            trailing: Icon(Icons.clear),
          )
      );

    });
    return ListView(
      children: _list,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: AppBar(
          iconTheme:IconThemeData(
            color: Colors.black
          ),
          title: Text("用户管理",style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.white,
        ),
      ),
      body: Container(
        child: userView(user,context)
      ),
    );
  }
}

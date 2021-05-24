import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class login_button extends StatelessWidget {
  final String text;
  const login_button(this.text,{Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 60.h,
        width: 220.w,
        decoration: BoxDecoration(
            border: Border.all(
                width: 3.w,color: Colors.black
            )
        ),
      child: Text(text,style: TextStyle(
        fontSize: 22.sp,
            letterSpacing:20.w
      ),),
      );
  }
}

class curve_button extends StatelessWidget {
  const curve_button({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60.h,
      width: 220.w,
      decoration: BoxDecoration(
          border: Border.all(
              width: 1.w,color: Colors.black
          )
      ),
      child: Text("查看数据曲线",style: TextStyle(
          fontSize: 20.sp,
          letterSpacing:10.w
      ),),
    );
  }
}


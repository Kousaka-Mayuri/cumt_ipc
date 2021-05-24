import 'package:cumt_ipc/module/text_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class login_textfield extends StatelessWidget {
  final TextEditingController textEditingController;
  final String text;
  const login_textfield(this.text,{this.textEditingController,Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60.h,
      width: 220.w,
      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 3.w,color: Colors.black
        )
      ),
      child: TextField(
              textAlign: TextAlign.center,
              controller: textEditingController,
              decoration: InputDecoration(
                labelText: text,
                labelStyle: TextStyle(
                  fontSize: 22.sp,
                  color: Colors.black
                ),
                border: InputBorder.none
              ),
            ),

    );
  }
}

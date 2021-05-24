import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class title_text extends StatelessWidget {
  final String text;
  const title_text(this.text,{Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      fontSize: 22.sp,
      color: Colors.black,
      fontWeight: FontWeight.bold
    ),);
  }
}

class textfield_text extends StatelessWidget {
  final String text;
  const textfield_text(this.text,{Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
        fontSize: 18.sp,
        color: Colors.black,
        fontWeight: FontWeight.bold
    ),);
  }
}

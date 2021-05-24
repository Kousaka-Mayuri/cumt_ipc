import 'package:cumt_ipc/module/text_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class home_page extends StatelessWidget {
  const home_page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 40.h),
              alignment: Alignment.center,
              child: title_text("企业与公司产品介绍"),
            ),*/
            Container(
              margin: EdgeInsets.fromLTRB(15.w, 0, 15.w, 0),
              child: Column(
                children: [
                  title_text("中国矿业大学介绍"),
                  Container(height: 20.h,),
                  Text("    中国矿业大学（China University of Mining and Technology），位于江苏省徐州市，是教育部直属的全国重点大学，教育部与江苏省人民政府、应急管理部共建高校，国家“世界一流学科建设高校”，国家“211工程”“985工程优势学科创新平台”建设高校，全国首批博士和硕士学位授予单位，高水平行业特色大学优质资源共享联盟、世界能源大学联盟和国际矿业、能源与环境高等教育联盟成员，入选“111计划”、卓越工程师教育培养计划、国家建设高水平大学公派研究生项目、中国政府奖学金来华留学生接收院校，国家大学生创新性实验计划、新工科研究与实践项目、全国高校实践育人创新创业基地。"),
                  Container(height: 60.h,),
                  Container(
                    child: Image.asset('assets/images/background.jpg'),
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}

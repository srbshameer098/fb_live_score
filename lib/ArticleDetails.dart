import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ArticleDetails extends StatefulWidget {
  const ArticleDetails({super.key});

  @override
  State<ArticleDetails> createState() => _ArticleDetailsState();
}

class _ArticleDetailsState extends State<ArticleDetails> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  Color(0xff0f0f1c),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          width: 370,
          height: 390,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
             ),
          child: Image.asset(
          "assets/articel4.png",
          width: 370.w,
          height: 390.h,
      ),
        ),
SizedBox(height: 5.h,),
          Padding(
            padding:  EdgeInsets.only(left: 28.w,right: 28.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Arsenal vs Aston Villa prediction",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

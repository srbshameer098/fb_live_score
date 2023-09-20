import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 50.h,),
          Image.asset("assets/soccer.png",
            width: 278.78399658203125.w,
            height: 338.11199951171875.h,
          ),
          Text(
              "Dicover all about sport",
              style: TextStyle(
                fontSize: 40.sp,
                fontWeight: FontWeight.w600,
              )
          )
        ],
      ),
    );
  }
}

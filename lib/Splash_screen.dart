import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Splash_screen extends StatefulWidget {
  const Splash_screen({Key? key}) : super(key: key);

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black54,

      body: Padding(
        padding:  EdgeInsets.only(left: 24.w,right: 24.w,top: 59),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h,),
            Text(
                "What sport do you interest ?",
                style: TextStyle(
                  fontSize: 36.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                )
            ),
SizedBox(height: 14.h,),

            Text(
                "You can choose more than one",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                )
            ),
            SizedBox(height: 59.h,),
            Row(
              children: [

                Column(
                  children: [
                    CircleAvatar(radius: 45.r,backgroundColor: Color(0xff222232),child: Image.asset("assets/soccer.png",width: 42.w,height: 42.h,),),
                    Text(
                        "Soccer",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        )
                    )
                  ],
                ),
                SizedBox(width: 20.w,),
                Column(
                  children: [
                    CircleAvatar(radius: 45.r,backgroundColor: Color(0xff222232),child: Image.asset("assets/basketball.png",width: 42.w,height: 42.h,),),

                    Text(
                        "Basketball",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        )
                    )],

                ),
                SizedBox(width: 20.w,),

                Column(
                  children: [
                    CircleAvatar(radius: 45.r,backgroundColor: Color(0xff222232),child: Image.asset("assets/football.png",width: 42.w,height: 42.h,),),
                    Text(
                        "Football",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        )
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 30.h,),
            Row(
              children: [

                Column(
                  children: [
                    CircleAvatar(radius: 45.r,backgroundColor: Color(0xff222232),child: Image.asset("assets/baseball.png",width: 42.w,height: 42.h,),),
                    Text(
                        "Baseball",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        )
                    )
                  ],
                ),
                SizedBox(width: 20.w,),
                Column(
                  children: [
                    CircleAvatar(radius: 45.r,backgroundColor: Color(0xff222232),child: Image.asset("assets/tennis.png",width: 42.w,height: 42.h,),),

                    Text(
                        "Tennis",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        )
                    )],

                ),
                SizedBox(width: 20.w,),

                Column(
                  children: [
                    CircleAvatar(radius: 45.r,backgroundColor: Color(0xff222232),child: Image.asset("assets/volly.png",width: 42.w,height: 42.h,),),
                    Text(
                        "Volleyball",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        )
                    )
                  ],
                ),
              ],
            ),

            SizedBox(height: 94.h,),
            Container(
              width: 327.w,
              height: 63.h,
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(16),
                  color: Color(0xff246BFD)),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 140.w, top: 20.h),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Text("Continue",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        )),
                  ],
                ),
              ),),
            SizedBox(height: 26.h,),
            Center(
              child: Text(
                  "Skip",
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  )
              ),
            )



          ],
        ),
      ),


    );
  }
}

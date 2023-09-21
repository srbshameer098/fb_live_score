import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Padding(
        padding: EdgeInsets.only(left: 48.w, top: 64.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Image.asset("assets/img1.png",
              width: 278.78399658203125.w,
              height: 338.11199951171875.h,
            ),
            SizedBox(height: 70.h,),
            Text(
                "Dicover all \nabout sport",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w600,
                )
            ),
            SizedBox(height: 14.h,),
            Text(
                "Search millions of jobs and get the \ninside scoop on companies.\nWait for what? Let’s get start it!",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                )
            ),

            SizedBox(height: 45.h,),


            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.r),
                          topRight: Radius.circular(40.r),
                        ),
                      ),
                      context: context,
                      builder: (context) {
                        return StatefulBuilder(
                          builder: (BuildContext context, void Function(void Function()) setState) {  return SingleChildScrollView(
                            child: Container(
                              height: 499.h,
                              color: Color(0xff222232),
                              child: Padding(
                                padding:  EdgeInsets.only(left: 24.w,top: 18.h),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsets.only(
                                              left: 140.w),
                                          child: Center(
                                            child: Container(
                                              width: 66.w,
                                              height: 5.h,
                                              decoration:
                                              ShapeDecoration(
                                                color: Color(
                                                    0xffb7b4b4),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        4.r)),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 40.h,
                                    ),
                                    SingleChildScrollView(
                                      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text(
                                              "Welcome",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 28.sp,
                                                fontWeight: FontWeight.w600,
                                              )
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 25.h,
                                    ),



                                    Container(
                                        width: 327.w,
                                        height: 64.h,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            color: Color(0xff181829))


                                    ),
                                    SizedBox(
                                      height: 25.h,
                                    ),


                                    Container(
                                        width: 327.w,
                                        height: 64.h,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            color: Color(0xff181829))


                                    ),


                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 0.w,
                                          right: 0.w,
                                          top: 20.h,
                                          bottom: 15.h),
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value:value ,
                                            onChanged: (value1) {
                                              setState(() {
                                               value=!value;
                                              });
                                            },
                                          ),
                                          Padding(
                                              padding:
                                              EdgeInsets.only(
                                                  left: 2.w),
                                              child: Text(
                                                  "Remember me",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14.sp,
                                                    fontWeight: FontWeight.w400,
                                                  )
                                              )
                                          ),
                                          SizedBox(
                                            width: 3.w,
                                          ),
                                          Icon(
                                            Icons
                                                .arrow_forward_ios,
                                            color: Color(
                                                0xff0C9359),
                                            size: 18.sp,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    SizedBox(
                                        width: 320.w,
                                        child: Divider(
                                          color: Colors.grey,
                                          thickness: 0.sp,
                                        )),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Text("Go to Settings",
                                        style: TextStyle(
                                          color:
                                          Color(0xff0C9359),
                                          fontSize: 18.sp,
                                          fontWeight:
                                          FontWeight.w700,
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          );},

                        );
                      },
                    );
                  },
                  child: Container(

                    width: 199.w,
                    height: 63.h,
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(16),
                        color: Color(0xff246BFD)),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 73.w, top: 20.h),
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [

                          Text(
                              "Sign in",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                              )
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 39.w,),
                Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                    )
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       backgroundColor:  Color(0xff0f0f1c),
      appBar: AppBar(
        backgroundColor: Color(0xff0f0f1c),

        title:

        Text(
            "LiveScore",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.sp,
              fontWeight: FontWeight.w400,
            )
        ),

        actions: [  Icon(Icons.search_outlined,color: Colors.white,size: 24.sp,),
          SizedBox(width: 24.w,),
          Stack(children: [
            Icon(Icons.notifications_none_outlined,color: Colors.white,size: 24.sp,

            ),
            Padding(
              padding:  EdgeInsets.only(left: 13.w),
              child: Positioned(
                width: 20.w,
                height:10.h ,
                child: CircleAvatar(radius: 4.r,backgroundColor: Colors.red,child: Text(
                    "3",
                    style: TextStyle(
                      fontSize: 6.sp,
                      fontWeight: FontWeight.w400,
                    )
                ),),
              ),
            )
          ]),
          SizedBox(width: 28.w,),
        ],
      ),

      body: Padding(
        padding:  EdgeInsets.only(left: 24.w,right: 24.w),
        child: Column(
          children: [

            Container(
          width: 319,
          height: 171,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xff0f0f1c)),
              child: ListView(
                children: [
                  CarouselSlider(
                    items: [

                      //1st Image of Slider
                      Container(


                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),

                        ),child: Image.asset("assets/bimg1.png",

                      ),
                      ),

                      //2nd Image of Slider
                      Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),

                        ),
                        child: Image.asset("assets/bimg1.png"),
                      ),

                      //3rd Image of Slider
                      Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),

                      ),
                        child: Image.asset("assets/bimg1.png"),
                      ),



                    ],

                    //Slider Container properties
                    options: CarouselOptions(
                      height: 170.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            SizedBox(
              height: 120.h,
              child: ListView(scrollDirection: Axis.horizontal,
               children: [

                 Container(
                     width: 108,
                     height: 115,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(16),
                         color: Color(0xffef9774)),
                   child: Column(
                     children: [
                       Padding(
                         padding:  EdgeInsets.only(left: 34.w,right: 34.w,top: 20.h,bottom: 12.h),
                         child: Image.asset("assets/soccer.png",
                           width: 40.w,
                           height: 40.h,),
                       ),

                       Text(
                           "Soccer",
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 18.sp,
                             fontWeight: FontWeight.w600,
                           )
                       )
                     ],
                   ),

                 ),
                 SizedBox(width: 14.w,),
                 Container(
                     width: 108,
                     height: 115,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(16),
                         color: Color(0xff222232)),
                   child: Column(
                     children: [
                       Padding(
                         padding:  EdgeInsets.only(left: 34.w,right: 34.w,top: 20.h,bottom: 12.h),
                         child: Image.asset("assets/basketball.png",
                           width: 40.w,
                           height: 40.h,),
                       ),

                       Text(
                           "Basketball",
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 18.sp,
                             fontWeight: FontWeight.w600,
                           )
                       )
                     ],
                   ),
                 ),


                 SizedBox(width: 14.w,),
                 Container(
                     width: 108,
                     height: 115,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(16),
                         color: Color(0xff222232)),
                   child: Column(
                     children: [
                       Padding(
                         padding:  EdgeInsets.only(left: 34.w,right: 34.w,top: 20.h,bottom: 12.h),
                         child: Image.asset("assets/football.png",
                           width: 40.w,
                           height: 40.h,),
                       ),

                       Text(
                           "Football",
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 18.sp,
                             fontWeight: FontWeight.w600,
                           )
                       )
                     ],
                   ),
                 ),
                 SizedBox(width: 14.w,),

                 Container(
                   width: 108,
                   height: 115,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(16),
                       color: Color(0xff222232)),
                   child: Column(
                     children: [
                       Padding(
                         padding:  EdgeInsets.only(left: 34.w,right: 34.w,top: 20.h,bottom: 12.h),
                         child: Image.asset("assets/baseball.png",
                           width: 40.w,
                           height: 40.h,),
                       ),

                       Text(
                           "Baseball",
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 18.sp,
                             fontWeight: FontWeight.w600,
                           )
                       )
                     ],
                   ),

                 ),
                 SizedBox(width: 14.w,),

                 Container(
                   width: 108,
                   height: 115,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(16),
                       color: Color(0xff222232)),
                   child: Column(
                     children: [
                       Padding(
                         padding:  EdgeInsets.only(left: 34.w,right: 34.w,top: 20.h,bottom: 12.h),
                         child: Image.asset("assets/tennis.png",
                           width: 40.w,
                           height: 40.h,),
                       ),

                       Text(
                           "Tennis",
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 18.sp,
                             fontWeight: FontWeight.w600,
                           )
                       )
                     ],
                   ),

                 ),
                 SizedBox(width: 14.w,),

                 Container(
                   width: 108,
                   height: 115,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(16),
                       color: Color(0xff222232)),
                   child: Column(
                     children: [
                       Padding(
                         padding:  EdgeInsets.only(left: 34.w,right: 34.w,top: 20.h,bottom: 12.h),
                         child: Image.asset("assets/volly.png",
                           width: 40.w,
                           height: 40.h,),
                       ),

                       Text(
                           "Volleyball",
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 18.sp,
                             fontWeight: FontWeight.w600,
                           )
                       )
                     ],
                   ),

                 ),



               ],

              ),
            ),

            Row(
              children: [

                Image.asset("assets/spain.png",
                  width: 24.w,
                  height: 24.h,),
                Column(
                  children: [
                    Text(
                        "La Liga",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        )
                    ),

                    Text(
                        "Spain",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        )
                    )
                  ],
                )
              ],
            )



          ],
        ),
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

List<String> img = [
  'assets/soccer.png',
  'assets/basketball.png',
  'assets/football.png',
  'assets/baseball.png',
  'assets/tennis.png',
  'assets/volly.png'
];
List<String> name = [
  'Soccer',
  'Basketball',
  'Football',
  'Baseball',
  'Tennis',
  'Volleyball'
];
int selectedIndex = -1;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0f0f1c),
      appBar: AppBar(
        backgroundColor: Color(0xff0f0f1c),
        title: Text("LiveScore",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.sp,
              fontWeight: FontWeight.w400,
            )),
        actions: [
          Icon(
            Icons.search_outlined,
            color: Colors.white,
            size: 24.sp,
          ),
          SizedBox(
            width: 24.w,
          ),
          Stack(children: [
            Icon(
              Icons.notifications_none_outlined,
              color: Colors.white,
              size: 24.sp,
            ),
            Padding(
              padding: EdgeInsets.only(left: 13.w),
              child: Positioned(
                width: 20.w,
                height: 10.h,
                child: CircleAvatar(
                  radius: 4.r,
                  backgroundColor: Colors.red,
                  child: Text("3",
                      style: TextStyle(
                        fontSize: 6.sp,
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ),
            )
          ]),
          SizedBox(
            width: 28.w,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w),
        child: SingleChildScrollView(
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
                          ),
                          child: Image.asset(
                            "assets/bimg1.png",
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
                height: 135.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: img.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        width: 115.w,
                        height: 115.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: selectedIndex == index
                                ? Color(0xffe88a64)
                                : Color(0xff222232)),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20.h, bottom: 12.h),
                              child: Image.asset(
                                img[index],
                                width: 56.w,
                                height: 56.h,
                              ),
                            ),
                            Text(name[index],
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                )),
                            SizedBox(
                              width: 120.w,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 14.w,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/spain.png",
                    width: 24.w,
                    height: 24.h,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("La Liga",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          )),
                      Text("Spain",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                          ))
                    ],
                  ),
                  SizedBox(
                    width: 210.w,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                    size: 18.sp,
                  )
                ],
              ),
              SizedBox(
                height: 14.h,
              ),
              Stack(
                children:[ Container(
                    width: 319,
                    height: 68,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xff2a2a3c)),
                  child: Row(
                    children: [
                      SizedBox(width: 14.w,),
                      CircleAvatar(radius: 16.r,backgroundColor: Color(0xfd000000),child: Image.asset("assets/barcelona.png",width: 21.684894561767578.w, height: 22.h,),),
                      SizedBox(width: 5.w,),
                      CircleAvatar(radius: 16.r,backgroundColor: Color(0xfd000000),child: Image.asset("assets/realmadrid.png",width: 21.684894561767578.w, height: 22.h,),),
                      SizedBox(width: 14.w,),

                          Row(
                            children: [

                              Column(
                                children: [
                                  SizedBox(height: 16.h,),
                                  Text(
                                      "Barcelona ",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      )
                                  ), Text(
                                      "2",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      )
                                  ),  ],
                              ),

                              SizedBox(width: 1.w,),
                              Column(
                                children: [
                                  SizedBox(height: 16.h,),
                                  Text(
                                      " vs  ",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      )
                                  ), Text(
                                      "-",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      )
                                  ),  ],
                              ),
                              SizedBox(width: 1.w,),
                              Column(
                                children: [
                                  SizedBox(height: 16.h,),
                                  Text(
                                      "  Real Madrid",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      )
                                  ), Text(
                                      "0",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      )
                                  ),
                                ],
                              ),
                            ],
                          )

                    ],
                  ),
                ),

                  Positioned(

                    left: 278.w,
                    child: Container(
                    width: 47,
                    height: 68,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16.r),
                          bottomRight: Radius.circular(16.r)
                        ),
                        color: Color(0xff222232)),

                      child: Padding(
                        padding:  EdgeInsets.only(left: 16.w,top: 25.h),
                        child: Text(
                            "HT",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            )
                        ),
                      ),

              ),
                  )       ]),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/england.png",
                    width: 24.w,
                    height: 24.h,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Premier League",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          )),
                      Text("England",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                          ))
                    ],
                  ),
                  SizedBox(
                    width: 147.w,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                    size: 18.sp,
                  )
                ],
              ),
              SizedBox(
                height: 14.h,
              ),
              Stack(
                  children:[ Container(
                    width: 319,
                    height: 68,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xff2a2a3c)),
                    child: Row(
                      children: [
                        SizedBox(width: 14.w,),
                        CircleAvatar(radius: 16.r,backgroundColor: Color(0xfd000000),child: Image.asset("assets/barcelona.png",width: 21.684894561767578.w, height: 22.h,),),
                        SizedBox(width: 5.w,),
                        CircleAvatar(radius: 16.r,backgroundColor: Color(0xfd000000),child: Image.asset("assets/realmadrid.png",width: 21.684894561767578.w, height: 22.h,),),
                        SizedBox(width: 14.w,),

                        Row(
                          children: [

                            Column(
                              children: [
                                SizedBox(height: 16.h,),
                                Text(
                                    "Barcelona ",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    )
                                ), Text(
                                    "2",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    )
                                ),  ],
                            ),

                            SizedBox(width: 1.w,),
                            Column(
                              children: [
                                SizedBox(height: 16.h,),
                                Text(
                                    " vs  ",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    )
                                ), Text(
                                    "-",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    )
                                ),  ],
                            ),
                            SizedBox(width: 1.w,),
                            Column(
                              children: [
                                SizedBox(height: 16.h,),
                                Text(
                                    "  Real Madrid",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    )
                                ), Text(
                                    "0",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    )
                                ),
                              ],
                            ),
                          ],
                        )

                      ],
                    ),
                  ),

                    Positioned(

                      left: 278.w,
                      child: Container(
                        width: 47,
                        height: 68,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(16.r),
                                bottomRight: Radius.circular(16.r)
                            ),
                            color: Color(0xff222232)),

                        child: Padding(
                          padding:  EdgeInsets.only(left: 16.w,top: 25.h),
                          child: Text(
                              "HT",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              )
                          ),
                        ),

                      ),
                    )       ]),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    selectedIndex = -1;
    // TODO: implement dispose
    super.dispose();
  }
}

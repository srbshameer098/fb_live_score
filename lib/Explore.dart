import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
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

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0f0f1c),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 26.w),
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 0.w,
                ),
                Container(
                  width: 319.w,
                  height: 54.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Color(0xff222232)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 280.w,
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.search_outlined,
                              color: Colors.grey,
                            ),
                            hintText: "Search for news, team, match, etc...",
                            hintStyle: TextStyle(color: Colors.grey),
                            focusedBorder: InputBorder.none,
                            enabledBorder:
                                UnderlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                SizedBox(
                  height: 50.h,
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
                          width: 120.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32),
                              color: selectedIndex == index
                                  ? Color(0xffe88a64)
                                  : Color(0xff222232)),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 11.h,
                                  bottom: 11.h,
                                  left: 11.w,
                                ),
                                child: Image.asset(
                                  img[index],
                                  width: 24.w,
                                  height: 24.h,
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(name[index],
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  )),
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
                  height: 32.h,
                ),
                Padding(
                  padding:  EdgeInsets.only(right: 32.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/img3.png",
                        width: 99.31034851074219.w,
                        height: 66.20689392089844.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "Roumor Has It: Lampard’s \nposition under threat, ...",
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text("04 JAN 2021, 14:16",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      SizedBox(
                        width: 32.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.h),
                        child: Icon(
                          Icons.bookmark_outline_outlined,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),


                SizedBox(
                  height: 24.h,
                ),
                Padding(
                  padding:  EdgeInsets.only(right: 32.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/img4.png",
                        width: 99.31034851074219.w,
                        height: 66.20689392089844.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "Artrta sees ‘natural leader’\nTierney as a future, ...",
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text("04 JAN 2021, 14:16",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      SizedBox(
                        width: 31.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.h),
                        child: Icon(
                          Icons.bookmark_outline_outlined,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 24.h,
                ),
                Padding(
                  padding:  EdgeInsets.only(right: 32.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/img5.png",
                        width: 99.31034851074219.w,
                        height: 66.20689392089844.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "Athletic Bilbao to appoint \nMarcelino as coach ...  ",
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text("04 JAN 2021, 14:16",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      SizedBox(
                        width: 35.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.h),
                        child: Icon(
                          Icons.bookmark_outline_outlined,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 24.h,
                ),
                Padding(
                  padding:  EdgeInsets.only(right: 32.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/img6.png",
                        width: 99.31034851074219.w,
                        height: 66.20689392089844.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "Barcelona suffer too much \nlate in games, says Ter Stegen",
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text("04 JAN 2021, 14:16",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.h),
                        child: Icon(
                          Icons.bookmark_outline_outlined,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),

SizedBox(height: 32.h,),
                Text(
                    "Trending News",
                    style: TextStyle(
                      fontSize: 24.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    )
                ),

                SizedBox(height: 32.h,),


                SizedBox(
                  height: 169.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,

                      children:[ Container(
                        width: 600.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            ),
                        child: Row(
                          children: [
                            Image.asset(
                             "assets/img7.png",
                              width: 241.w,
                              height: 169.h,
                            ),
                            SizedBox(
                              width: 10.w,),
                            Stack(
                              children: [
                                Image.asset(
                                "assets/img8.png",
                                width: 291.w,
                                height: 169.h,
                              ),
                                Positioned(
                                  left: 10.w,
                                  top: 86.h,
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          "Liverpool vs Barcelona\nPrediction",
                                          style: TextStyle(
                                            fontSize: 17.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                          )
                                      ),
SizedBox(height: 10,),
                                      Text(
                                          "JAN 04, 2021",
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                          )
                                      )
                                    ],
                                  ),
                                )
                            ]),
                          ]
                        ),
                      )]



                  ),
                ),






              ],
            ),
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

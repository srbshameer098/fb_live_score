import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Match_Detail extends StatefulWidget {
  const Match_Detail({Key? key}) : super(key: key);

  @override
  State<Match_Detail> createState() => _Match_DetailState();
}

class _Match_DetailState extends State<Match_Detail> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xff0f0f1c),
        appBar: AppBar(
          backgroundColor: Color(0xff0f0f1c),
          leading: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.white,
            size: 20.sp,
          ),
          title: Text("   UEFA Champions League",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              )),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 28.w, right: 20.w, top: 25.h),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 28.r,
                        backgroundColor: Color(0xff2B2B3D),
                        child: Image.asset(
                          "assets/arsenal.png",
                          width: 36.w,
                          height: 36.h,
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text("Arsenal",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ))
                    ],
                  ),
                  SizedBox(
                    width: 41.w,
                  ),
                  Column(
                    children: [
                      Text("2 - 3",
                          style: TextStyle(
                            fontSize: 40.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          )),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text("90.15",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ))
                    ],
                  ),
                  SizedBox(
                    width: 41.w,
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 28.r,
                        backgroundColor: Color(0xff2B2B3D),
                        child: Image.asset(
                          "assets/astonvilla.png",
                          width: 36.w,
                          height: 36.h,
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text("Aston Villa",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ))
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 380.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: Color(0x0c06492c)),
                child: TabBar(
                  dividerColor: Colors.transparent,
                  unselectedLabelColor: Color(0xff0C9359),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(23.r),
                      color: Color(0xfff19578)),
                  isScrollable: true,
                  tabs: [
                    Tab(
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 20.w, right: 20.w, top: 14.h, bottom: 14.h),
                        child: Text("Match Detail",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                    ),
                    Tab(
                        child: Padding(
                      padding: EdgeInsets.only(
                          left: 20.w, right: 20.w, top: 14.h, bottom: 14.h),
                      child: Text("Line Up",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          )),
                    )),
                    Tab(
                        child: Padding(
                      padding: EdgeInsets.only(
                          left: 20.w, right: 20.w, top: 14.h, bottom: 14.h),
                      child: Text("H2H",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          )),
                    )),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Container(
                      width: 320.w,
                      height: 427.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: Color(0xff0f0f1c)),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 39.w, top: 24.h),
                            child: Row(
                              children: [
                                Text("8",
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                    )),
                                SizedBox(
                                  width: 70.w,
                                ),
                                Text("Shooting",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w600,
                                    )),
                                SizedBox(
                                  width: 65.w,
                                ),
                                Text("12",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 34.w, top: 24.h),
                            child: Row(
                              children: [
                                Text("22",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w400,
                                    )),
                                SizedBox(
                                  width: 72.w,
                                ),
                                Text("Attacks",
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    )),
                                SizedBox(
                                  width: 71.w,
                                ),
                                Text("29",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 34.w, top: 24.h),
                            child: Row(
                              children: [
                                Text("42",
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                    )),
                                SizedBox(
                                  width: 61.w,
                                ),
                                Text("Possesion",
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    )),
                                SizedBox(
                                  width: 58.w,
                                ),
                                Text("58",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 39.w, top: 24.h),
                            child: Row(
                              children: [
                                Text("3",
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                    )),
                                SizedBox(
                                  width: 76.w,
                                ),
                                Image.asset(
                                  "assets/yellowcard.png",
                                  width: 11.w,
                                  height: 16.h,
                                ),
                                SizedBox(
                                  width: 6.w,
                                ),
                                Text("Cards",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w600,
                                    )),
                                SizedBox(
                                  width: 75.w,
                                ),
                                Text("5",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 39.w, top: 24.h),
                            child: Row(
                              children: [
                                Text("8",
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                    )),
                                SizedBox(
                                  width: 75.w,
                                ),
                                Text("Corners",
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    )),
                                SizedBox(
                                  width: 75.w,
                                ),
                                Text("7",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.w, top: 24.h),
                            child: Row(
                              children: [
                                Text("Other Match",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w600,
                                    )),
                                SizedBox(
                                  width: 158.w,
                                ),
                                Text("See all",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 14.h,
                          ),
                          Stack(children: [
                            Container(
                              width: 319,
                              height: 68,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Color(0xff2a2a3c)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 14.w,
                                  ),
                                  CircleAvatar(
                                    radius: 16.r,
                                    backgroundColor: Color(0xfd000000),
                                    child: Image.asset(
                                      "assets/manchester.png",
                                      width: 21.684894561767578.w,
                                      height: 22.h,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  CircleAvatar(
                                    radius: 16.r,
                                    backgroundColor: Color(0xfd000000),
                                    child: Image.asset(
                                      "assets/Chelsea.png",
                                      width: 21.684894561767578.w,
                                      height: 22.h,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 14.w,
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(
                                            height: 16.h,
                                          ),
                                          Text("Man United",
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                              )),
                                          Text("2",
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                              )),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 1.w,
                                      ),
                                      Column(
                                        children: [
                                          SizedBox(
                                            height: 16.h,
                                          ),
                                          Text(" vs ",
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                              )),
                                          Text(" - ",
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                              )),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 1.w,
                                      ),
                                      Column(
                                        children: [
                                          SizedBox(
                                            height: 16.h,
                                          ),
                                          Text("Chelsea FC",
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                              )),
                                          Text(" 3 ",
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                              )),
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
                                        bottomRight: Radius.circular(16.r)),
                                    color: Color(0xff222232)),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 16.w, top: 25.h),
                                  child: Text("FT",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                      )),
                                ),
                              ),
                            )
                          ]),
                          SizedBox(
                            height: 14.h,
                          ),
                          Stack(children: [
                            Container(
                              width: 319,
                              height: 68,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Color(0xff2a2a3c)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 14.w,
                                  ),
                                  CircleAvatar(
                                    radius: 16.r,
                                    backgroundColor: Color(0xfd000000),
                                    child: Image.asset(
                                      "assets/tottenham.png",
                                      width: 21.684894561767578.w,
                                      height: 22.h,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  CircleAvatar(
                                    radius: 16.r,
                                    backgroundColor: Color(0xfd000000),
                                    child: Image.asset(
                                      "assets/Southamton.png",
                                      width: 21.684894561767578.w,
                                      height: 22.h,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 14.w,
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(
                                            height: 16.h,
                                          ),
                                          Text(" Tottenham ",
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                              )),
                                          Text(" 1 ",
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                              )),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 1.w,
                                      ),
                                      Column(
                                        children: [
                                          SizedBox(
                                            height: 16.h,
                                          ),
                                          Text(" vs ",
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                              )),
                                          Text(" - ",
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                              )),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 1.w,
                                      ),
                                      Column(
                                        children: [
                                          SizedBox(
                                            height: 16.h,
                                          ),
                                          Text(" Southamton ",
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                              )),
                                          Text(" 0 ",
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                              )),
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
                                        bottomRight: Radius.circular(16.r)),
                                    color: Color(0xff222232)),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 16.w, top: 25.h),
                                  child: Text("FT",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                      )),
                                ),
                              ),
                            )
                          ]),
                        ],
                      ),
                    ),
                    Container(
                      width: 320.w,
                      height: 427.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: Color(0xff0f0f1c),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 108.w, top: 24.h),
                            child: Row(
                              children: [
                                Text("Formation",
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    )),
                                SizedBox(
                                  width: 14.w,
                                ),
                                Text("(4-2-3-1)",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                    ))
                              ],
                            ),
                          ),

                          SizedBox(
                            height: 20.h,
                          ),

                          Row(
                            children: [
                              Container(
                                width: 96.w,
                                height: 38.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(32.r),
                                  color: Color(0xecec9073),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 20.w,
                                      right: 20.w,
                                      top: 6.h,
                                      bottom: 6.h),
                                  child: Text("Arsenal",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      )),
                                ),
                              ),
                              Container(
                                width: 116.w,
                                height: 38.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                                  color: Colors.transparent,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 20.w,
                                      right: 20.w,
                                      top: 6.h,
                                      bottom: 6.h),
                                  child: Text("Aston Villa",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      )),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 24.h,
                          ),

                          Image.asset(
                            "assets/fieldFootball.png",
                            width: 320.w,
                            height: 363.h,
                          )


                        ],
                      ),
                    ),
                    Container(
                      width: 320.w,
                      height: 427.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: Color(0xff0f0f1c)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Standings extends StatefulWidget {
  const Standings({Key? key}) : super(key: key);

  @override
  State<Standings> createState() => _StandingsState();
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


class _StandingsState extends State<Standings> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  Color(0xff0f0f1c),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(left: 26.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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

                SizedBox(height: 24.h,),
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
                SizedBox(height: 18.h,),
                Container(
                    width: 318,
                    height: 215,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19),
                        color: Color(0xff222232)),

                  child: Padding(
                    padding:  EdgeInsets.only(left: 18.w,top: 16.h),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                                "Team",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                )
                            ),
SizedBox(width:115.w ,),
                            Text(
                                "D",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                )
                            ),
                            SizedBox(width:20.w ,),

                            Text(
                                "L",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,

                                  fontWeight: FontWeight.w400,
                                )
                            ),
                            SizedBox(width:20.w ,),

                            Text(
                                "Ga",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,

                                  fontWeight: FontWeight.w400,
                                )
                            ),
                            SizedBox(width:20.w ,),

                            Text(
                                "Gd",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,

                                  fontWeight: FontWeight.w400,
                                )
                            ),

                            SizedBox(width:20.w ,),

                            Text(
                                "Pts",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,

                                  fontWeight: FontWeight.w400,
                                )
                            ),

                          ],
                        ),
                        Row(
                          children: [
                            Image.asset("assets/Atletico.png",
                              width: 11.4375.w,
                              height: 16.h,
                            ),
                            SizedBox(width: 7.w,),
                            Text(
                                "Atlético Madrid",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                )
                            ),
                            SizedBox(width:43.w ,),
                            Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                )
                            ),
                            SizedBox(width:21.w ,),

                            Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,

                                  fontWeight: FontWeight.w400,
                                )
                            ),
                            SizedBox(width:24.w ,),

                            Text(
                                "6",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,

                                  fontWeight: FontWeight.w400,
                                )
                            ),
                            SizedBox(width:26.w ,),

                            Text(
                                "23",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,

                                  fontWeight: FontWeight.w400,
                                )
                            ),

                            SizedBox(width:23.w ,),

                            Text(
                                "38",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,

                                  fontWeight: FontWeight.w400,
                                )
                            ),

                          ],
                        ),

                        Row(
                          children: [

                            Image.asset("assets/realmadrid.png",
                              width: 11.4375.w,
                              height: 16.h,
                            ),
                            SizedBox(width: 7.w,),
                            Text(
                                "Real Madrid",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                )
                            ),
                            SizedBox(width:61.w ,),
                            Text(
                                "4",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                )
                            ),
                            SizedBox(width:21.w ,),

                            Text(
                                "3",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,

                                  fontWeight: FontWeight.w400,
                                )
                            ),
                            SizedBox(width:24.w ,),

                            Text(
                                "7",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,

                                  fontWeight: FontWeight.w400,
                                )
                            ),
                            SizedBox(width:26.w ,),

                            Text(
                                "15",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,

                                  fontWeight: FontWeight.w400,
                                )
                            ),

                            SizedBox(width:23.w ,),

                            Text(
                                "37",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,

                                  fontWeight: FontWeight.w400,
                                )
                            ),

                          ],
                        ),

                        Row(
                          children: [

                            Image.asset("assets/barcelona.png",
                              width: 11.4375.w,
                              height: 16.h,
                            ),
                            SizedBox(width: 7.w,),
                            Text(
                                "Barcelona",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                )
                            ),
                            SizedBox(width:71.w ,),
                            Text(
                                "4",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                )
                            ),
                            SizedBox(width:21.w ,),

                            Text(
                                "4",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,

                                  fontWeight: FontWeight.w400,
                                )
                            ),
                            SizedBox(width:24.w ,),

                            Text(
                                "9",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,

                                  fontWeight: FontWeight.w400,
                                )
                            ),
                            SizedBox(width:26.w ,),

                            Text(
                                "20",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,

                                  fontWeight: FontWeight.w400,
                                )
                            ),

                            SizedBox(width:23.w ,),

                            Text(
                                "34",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,

                                  fontWeight: FontWeight.w400,
                                )
                            ),

                          ],
                        ),

                        Row(
                          children: [

                            Image.asset("assets/Villareal.png",
                              width: 11.4375.w,
                              height: 16.h,
                            ),
                            SizedBox(width: 7.w,),
                            Text(
                                "Villareal",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                )
                            ),
                            SizedBox(width:81.w ,),
                            Text(
                                "8",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                )
                            ),
                            SizedBox(width:21.w ,),

                            Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,

                                  fontWeight: FontWeight.w400,
                                )
                            ),
                            SizedBox(width:21.w ,),

                            Text(
                                "10",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,

                                  fontWeight: FontWeight.w400,
                                )
                            ),
                            SizedBox(width:23.w ,),

                            Text(
                                "16",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,

                                  fontWeight: FontWeight.w400,
                                )
                            ),

                            SizedBox(width:23.w ,),

                            Text(
                                "32",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,

                                  fontWeight: FontWeight.w400,
                                )
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),

                ),

SizedBox(height: 20.h,),
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


                SizedBox(height: 18.h,),
                Container(
                    width: 318,
                    height: 215,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19),
                        color: Color(0xff222232))
                ),

                SizedBox(height: 18.h,),

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

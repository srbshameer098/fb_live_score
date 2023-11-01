import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class StandingDetails extends StatefulWidget {
  const StandingDetails({super.key});

  @override
  State<StandingDetails> createState() => _StandingDetailsState();
}

List<String> name = [
  'All',
  'Home',
  'Awaya',

];
int selectedIndex = 0;


class _StandingDetailsState extends State<StandingDetails> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
appBar: AppBar(
  backgroundColor:  Color(0xff0f0f1c),
leading: GestureDetector(onTap: (){
  Navigator.of(context)
      .pop();
}, child: Icon(Icons.arrow_back_ios_new_outlined,size: 20.sp,color: Colors.white,)),
  title: Row(
    children: [
      SizedBox(width: 80.w,),
      Image.asset("assets/spain.png",
        width: 18.w,
        height: 18.h,),
      SizedBox(width: 10.w,),
      Text("Spain",style: TextStyle
        (fontSize: 16.sp,color: Colors.white),),
    ],
  ),
),
      backgroundColor:  Color(0xff0f0f1c),
      body: SafeArea(child: Padding(
        padding:  EdgeInsets.only(left: 28.w,right: 28.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 28.h,
              ),
              Center(
                child: Column(
                  children: [Image.asset("assets/ligaLogo.png",
                    width: 112.w,
                    height: 112.h,),
                    SizedBox(height: 10.h,),
                    Text(
                        "La Liga",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                        )),

               ] ),

              ),
              SizedBox(
                height: 24.h,
              ),
              SizedBox(
                height: 50.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: name.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(

                        width: 80.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: selectedIndex == index
                                ? Color(0xffe88a64)
                                : Color(0xff0f0f1c)),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 11.h,
                                bottom: 11.h,
                                left: 11.w,
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

                  Text(
                      "#",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      )
                  ),
                  SizedBox(width:10.w ,),
                  Text(
                      "Team",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      )
                  ),
                  SizedBox(width:104.w ,),
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

              Padding(
                padding:  EdgeInsets.only(right: 0.w),
                child: SizedBox(width: 360.w,
                    child: Divider(thickness: 0.sp,color: Colors.grey,)),
              ),

              SizedBox(height: 9.h,),

              Container(
                width: 310,
                height: 46,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff14264c)),
                child: Row(
                  children: [
                    SizedBox(width: 10.w,),
                    Text(
                        "1",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width: 10.w,),
                    Image.asset("assets/Atletico.png",
                      width: 13.w,
                      height: 16.h,
                    ),
                    SizedBox(width: 7.w,),
                    Text(
                        "Atlético Madrid",
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width:22.w ,),
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
              ),


              SizedBox(height: 8.h,),

              Container(
                width: 310,
                height: 46,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff14264c)),
                child: Row(
                  children: [
                    SizedBox(width: 10.w,),
                    Text(
                        "2",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width: 10.w,),

                    Image.asset("assets/realmadrid.png",
                      width: 13.w,
                      height: 16.h,
                    ),
                    SizedBox(width: 7.w,),
                    Text(
                        "Real Madrid",
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width:41.w ,),
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
              ),

              SizedBox(height: 8.h,),

              Container(
                width: 310,
                height: 46,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff14264c)),
                child: Row(
                  children: [
                    SizedBox(width: 10.w,),
                    Text(
                        "3",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width: 10.w,),

                    Image.asset("assets/barcelona.png",
                      width: 13.w,
                      height: 16.h,
                    ),
                    SizedBox(width: 7.w,),
                    Text(
                        "Barcelona",
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width:52.w ,),
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
              ),

              SizedBox(height: 8.h,),

              Container(
                width: 310,
                height: 46,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff441818)),
                child: Row(
                  children: [
                    SizedBox(width: 10.w,),
                    Text(
                        "4",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width: 10.w,),

                    Image.asset("assets/Villareal.png",
                      width: 13.w,
                      height: 16.h,
                    ),
                    SizedBox(width: 7.w,),
                    Text(
                        "Villareal",
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width:64.w ,),
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
              ),

              SizedBox(height: 8.h,),

              Container(
                width: 310,
                height: 46,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff441818)),
                child: Row(
                  children: [
                  SizedBox(width: 10.w,),
                Text(
                    "5",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    )
                ),
                SizedBox(width: 10.w,),

                    Image.asset("assets/real socieded.png",
                      width: 13.w,
                      height: 16.h,
                    ),
                    SizedBox(width: 7.w,),
                    Text(
                        "Real Sociedad",
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width:28.w ,),
                    Text(
                        "6",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width:21.w ,),

                    Text(
                        "5",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,

                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width:21.w ,),

                    Text(
                        "13",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,

                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width:26.w ,),

                    Text(
                        "13",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,

                          fontWeight: FontWeight.w400,
                        )
                    ),

                    SizedBox(width:23.w ,),

                    Text(
                        "30",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,

                          fontWeight: FontWeight.w400,
                        )
                    ),

                  ],
                ),
              ),

              SizedBox(height: 8.h,),

              Container(
                width: 310,
                height: 46,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff0f0f1c)),
                child: Row(
                  children: [
                    SizedBox(width: 10.w,),
                    Text(
                        "6",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width: 10.w,),

                    Image.asset("assets/sevilla.png",
                      width: 13.w,
                      height: 16.h,
                    ),
                    SizedBox(width: 7.w,),
                    Text(
                        "Sevilla",
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width:74.w ,),
                    Text(
                        "6",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width:21.w ,),

                    Text(
                        "5",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,

                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width:21.w ,),

                    Text(
                        "13",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,

                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width:26.w ,),

                    Text(
                        "13",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,

                          fontWeight: FontWeight.w400,
                        )
                    ),

                    SizedBox(width:23.w ,),

                    Text(
                        "30",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,

                          fontWeight: FontWeight.w400,
                        )
                    ),

                  ],
                ),
              ),

              SizedBox(height: 8.h,),

              Container(
                width: 310,
                height: 46,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff0f0f1c)),
                child: Row(
                  children: [
                    SizedBox(width: 10.w,),
                    Text(
                        "7",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width: 10.w,),

                    Image.asset("assets/granada.png",
                      width: 13.w,
                      height: 16.h,
                    ),
                    SizedBox(width: 7.w,),
                    Text(
                        "Granada",
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width:62.w ,),
                    Text(
                        "6",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width:21.w ,),

                    Text(
                        "5",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,

                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width:21.w ,),

                    Text(
                        "13",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,

                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width:26.w ,),

                    Text(
                        "13",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,

                          fontWeight: FontWeight.w400,
                        )
                    ),

                    SizedBox(width:23.w ,),

                    Text(
                        "30",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,

                          fontWeight: FontWeight.w400,
                        )
                    ),

                  ],
                ),
              ),

              SizedBox(height: 8.h,),

              Container(
                width: 310,
                height: 46,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff0f0f1c)),
                child: Row(
                  children: [
                    SizedBox(width: 10.w,),
                    Text(
                        "8",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width: 10.w,),

                    Image.asset("assets/Celta Vigo.png",
                      width: 13.w,
                      height: 16.h,
                    ),
                    SizedBox(width: 7.w,),
                    Text(
                        "Celta Vigo",
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width:51.w ,),
                    Text(
                        "6",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width:21.w ,),

                    Text(
                        "5",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,

                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width:21.w ,),

                    Text(
                        "13",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,

                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(width:26.w ,),

                    Text(
                        "13",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,

                          fontWeight: FontWeight.w400,
                        )
                    ),

                    SizedBox(width:23.w ,),

                    Text(
                        "30",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,

                          fontWeight: FontWeight.w400,
                        )
                    ),

                  ],
                ),
              ),

            ],

          ),
        ),
      )

      ),
    );
  }
  @override
  void dispose(){
    selectedIndex = 0;

    super.dispose();
  }
}




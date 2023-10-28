import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class My_profile extends StatefulWidget {
  const My_profile({Key? key}) : super(key: key);

  @override
  State<My_profile> createState() => _My_profileState();
}

List<String> name = [
  'My Profile',
  'Activity',
  'Settings',

];
int selectedIndex = 0;

class _My_profileState extends State<My_profile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  Color(0xff0f0f1c),

      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left: 28.w,right: 28.w
          ),
          child: Column(
            children: [

              SizedBox(
                height: 28.h,
              ),
              Center(
                child: Column(
                    children: [Image.asset("assets/my profile.png",
                      width: 112.w,
                      height: 112.h,),
                      SizedBox(height: 10.h,),
                      Text(
                          "Brian Imanuel",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600,
                          )
                      ),
                      Text(
                          "#YNWK till the end 🔥",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          )
                      )

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

                        width: 101.w,
                        height: 46.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: selectedIndex == index
                                ? Color(0xffe88a64)
                                : Color(0xff0f0f1c)),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 14.h,
                                bottom: 14.h,
                                left: 18.w,
                              ),

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


            SizedBox(height: 32.h,),
               Row(
                  children: [

                    CircleAvatar(radius: 20.r,backgroundColor: Colors.grey.shade900,
                      child:Icon(Icons.perm_identity_rounded,color: Colors.white,) ,),
                    SizedBox(width: 16.w,),

                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Name",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            )
                        ),

                        Text(
                            "Brian Imanuel",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            )
                        )
                      ],
                    ),

                    SizedBox(width: 156.w,),

                    Icon(Icons.arrow_forward_ios,color: Colors.white,size: 16.sp,)

                  ],
                ),
              SizedBox(height: 15.h,),

              Row(
                children: [

                  CircleAvatar(radius: 20.r,backgroundColor: Colors.grey.shade900,
                    child:Icon(Icons.perm_identity_rounded,color: Colors.white,) ,),
                  SizedBox(width: 16.w,),

                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "Name",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          )
                      ),

                      Text(
                          "Brian Imanuel",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          )
                      )
                    ],
                  ),

                  SizedBox(width: 156.w,),

                  Icon(Icons.arrow_forward_ios,color: Colors.white,size: 16.sp,)

                ],
              ),
              SizedBox(height: 15.h,),

              Row(
                children: [

                  CircleAvatar(radius: 20.r,backgroundColor: Colors.grey.shade900,
                    child:Icon(Icons.perm_identity_rounded,color: Colors.white,) ,),
                  SizedBox(width: 16.w,),

                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "Name",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          )
                      ),

                      Text(
                          "Brian Imanuel",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          )
                      )
                    ],
                  ),

                  SizedBox(width: 156.w,),

                  Icon(Icons.arrow_forward_ios,color: Colors.white,size: 16.sp,)

                ],
              ),
              SizedBox(height: 15.h,),

              Row(
                children: [

                  CircleAvatar(radius: 20.r,backgroundColor: Colors.grey.shade900,
                    child:Icon(Icons.perm_identity_rounded,color: Colors.white,) ,),
                  SizedBox(width: 16.w,),

                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "Name",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          )
                      ),

                      Text(
                          "Brian Imanuel",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          )
                      )
                    ],
                  ),

                  SizedBox(width: 156.w,),

                  Icon(Icons.arrow_forward_ios,color: Colors.white,size: 16.sp,)

                ],
              ),
              SizedBox(height: 15.h,),


              

            ],
          ),
        ),
      ),
    );
  }
}

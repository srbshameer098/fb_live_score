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
        padding:  EdgeInsets.only(left: 28.w,),
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
          ],

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




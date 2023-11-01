import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ArticleDetails extends StatefulWidget {
  const ArticleDetails({super.key});

  @override
  State<ArticleDetails> createState() => _ArticleDetailsState();
}

class _ArticleDetailsState extends State<ArticleDetails> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  Color(0xff0f0f1c),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
            width: 370,
            height: 390,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
               ),
            child: Stack(
              children: [Image.asset(
              "assets/articel4.png",
              width: 370.w,
              height: 390.h,
        ),
                Positioned(
                    left: 20.w,
                    top: 60.h,
                    child:
                    GestureDetector(
                        onTap: (){
                          Navigator.of(context)
                              .pop();
                        },
                    child:
                        Icon(Icons.arrow_back_ios,color: Colors.white,)),),
                Positioned(
                    left: 310.w,
                    top: 50.h,
                    child: CircleAvatar(radius: 25.r,backgroundColor:Colors.grey.shade700 ,
                      child: Icon(Icons.share_outlined,color: Colors.white,) ,)),
                Positioned(
                  left: 310.w,
                    top: 110.h,
                    child: CircleAvatar(radius: 25.r,backgroundColor:Color(0xffe88a64) ,
                      child: Icon(Icons.bookmark_outline_outlined,color: Colors.white,) ,))
           ]
            ),
          ),
SizedBox(height: 5.h,),
            Padding(
              padding:  EdgeInsets.only(left: 28.w,right: 28.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "Arsenal vs Aston Villa prediction",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                      )
                  ),
                  SizedBox(height: 5.h,),

              Image.asset(
                "assets/author.png",
                width: 319.w,
                height: 37.h,
              ),

                  SizedBox(height: 5.h,),

                  Row(
                    children: [
                      Text(
                          "A",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 52.sp,
                            fontWeight: FontWeight.w400,
                          )
                      ),
SizedBox(width: 8.w,),

                      Text(
                          "rsenal will have to grind it out against\nAston Villa if they are to register",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          )
                      )
                    ],
                  ),

                Container(
                  width: 319.w,
                height: 230.h,
                child:Stack(
                  children: [Column(
                  children:[
                  Text(
                  "League wins. The match is scheduled for\nSunday at the Emirates.\n \nThe Gunners put forth a real statement of intent after their 1-0 win against Manchester United.\nMikel Arteta's side had already surrendered points to Liverpool, Manchester City and ",
                  style: TextStyle(
                    color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                    )
            ),

                   ]
              ),

                    Positioned(
                      left: 45.w,
                      top: 165.h,
                      child: Container(
                        width:250.w ,
                        height: 56.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(27.r),
                            color: Color(0xffe88a64)),
                        child: Row(
                          children: [
                            SizedBox(width: 68.w,),
                            Text(
                                "Read More",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                )
                            ),
                            SizedBox(width: 10.w,),
                            Icon(Icons.keyboard_arrow_down_outlined,color: Colors.white,)

                          ],
                        ),
                      ),
                    )

                  ]

                )
              ,),
            ])
            )],
        ),
      ),
    );
  }
}

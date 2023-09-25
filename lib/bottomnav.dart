import 'package:fb_live_score/Explore.dart';
import 'package:fb_live_score/My_profile.dart';
import 'package:fb_live_score/Standings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



import 'Home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}
final screens=[ Home(),Explore(),Standings(),My_profile()];
int currentIndex=0;
class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      bottomNavigationBar: BottomNavigationBar(currentIndex: currentIndex,backgroundColor: Color(0xff232333),onTap: (index){
        setState(() {
          currentIndex=index;
        });
      },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.grey,), label: "Shop"
              ,backgroundColor: Color(0xff181823)),
          BottomNavigationBarItem(icon: Icon(Icons.explore_outlined,color: Colors.grey,), label: "Shop",backgroundColor: Color(0xff181823), ),
          BottomNavigationBarItem(icon:  Icon(Icons.analytics_outlined,color: Colors.grey), label: "Me",backgroundColor: Color(0xff181823)),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded,color: Colors.grey,), label: "Shop",backgroundColor: Color(0xff181823)),

        ],
      ),body: screens[currentIndex],

    );
  }
}

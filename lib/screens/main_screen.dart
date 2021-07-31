import 'package:bank_managment/screens/account_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final pages = [AccountScreen(), Container(), Container(), Container()];
  int _navIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
                colors: [Color(0xff141b26), Color(0xff19222f)],
                begin: Alignment(-1.0, -4.0),
                end: Alignment(1.0, 4.0),
              ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: pages[_navIndex],
          bottomNavigationBar: buildBottomNav()),
    );
  }

  BottomNavigationBar buildBottomNav() {
    return BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        currentIndex: _navIndex,
        onTap: (value) {
          setState(() {
            _navIndex = value;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: "Account",
            icon: SvgPicture.asset(
              "assets/images/user.svg",
              color: Color(0xff596579),
              width: 39.w,
              height: 41.h,
            ),
            activeIcon: buildBottomNavActiveIcon(
              SvgPicture.asset(
                "assets/images/user.svg",
                color: Colors.white,
                width: 39.w,
                height: 41.h,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Detail",
            icon: SvgPicture.asset("assets/images/calender.svg",
                color: Color(0xff596579), width: 42.w, height: 48.h),
            activeIcon: buildBottomNavActiveIcon(
              SvgPicture.asset(
                "assets/images/calender.svg",
                color: Colors.white,
                width: 42.w,
                height: 48.h,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Stats",
            icon: SvgPicture.asset("assets/images/stats.svg",
                color: Color(0xff596579), width: 46.w, height: 46.h),
            activeIcon: buildBottomNavActiveIcon(
              SvgPicture.asset(
                "assets/images/stats.svg",
                color: Colors.white,
                width: 46.w,
                height: 46.h,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Credit Card",
            icon: SvgPicture.asset("assets/images/credit_card.svg",
                color: Color(0xff596579), width: 36.w, height: 48.h),
            activeIcon: buildBottomNavActiveIcon(
              SvgPicture.asset(
                "assets/images/credit_card.svg",
                color: Colors.white,
                width: 36.w,
                height: 48.h,
              ),
            ),
          )
        ]);
  }

  ShaderMask buildBottomNavActiveIcon(Widget icon) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [Color(0xff3adee8), Color(0xff3279ad)],
        ).createShader(Rect.fromLTRB(0, 0, bounds.width, bounds.height));
      },
      child: icon,
    );
  }
}

import 'package:bank_managment/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(641, 1132),
      builder: () => MaterialApp(
        home: MainScreen(),
      ),
    );
  }
}

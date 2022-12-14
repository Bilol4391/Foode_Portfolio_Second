import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foode/Pages/FillBio.dart';
import 'package:foode/Pages/Sign_in.dart';
import 'package:foode/Pages/Sign_up.dart';
import 'package:foode/Pages/Temp.dart';
import 'package:foode/Pages/onBoarding.dart';
import 'package:foode/Pages/paymentPage.dart';
import 'package:foode/Pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foode/Pages/onBoarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => OnBoarding()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Image.asset("assets/image/Rectangle 23.02.07.png").color,
      body: Column(
        children: [
          // 64.verticalSpace,
          Container(
            width: 328.w,
            height: 926.h,
            margin: EdgeInsets.only(left: 50.r),
            decoration: BoxDecoration(
              // color: Colors.red,
                image: DecorationImage(image: AssetImage("assets/image/Rectangle 23.02.07.png"),opacity: 0.4
            ),
          ),
            child: Image.asset("assets/image/group.png"),
          )],
      ),
    );
  }
}

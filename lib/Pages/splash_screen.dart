import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foode/Pages/HomePage.dart';
import 'package:foode/Pages/Sign_in.dart';
import 'package:foode/Pages/onBoarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () async {
      SharedPreferences _store = await SharedPreferences.getInstance();
      String name = _store.getString("name") ?? "";
      if (name.isEmpty){
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => OnBoarding()));
        } else {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => HomePage()));
      }
      }
    );
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

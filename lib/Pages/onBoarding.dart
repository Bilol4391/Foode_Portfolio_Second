import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foode/Pages/Sign_in.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff09101D),
      body: Container(
        height: 928.h,
        width: 432.w,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/image/Image.png"), fit: BoxFit.cover)
        ),
        child: Container(
          margin: EdgeInsets.only(top: 233.r),
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/image/Rectangle 23.21.25.png"),fit: BoxFit.cover)
          ),
          child: Column(
            children: [
              Container(
                width: 300.w,
                height: 50.h,
                margin: EdgeInsets.only(top: 470.r),
                child: Center(child: Text("Foode", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w600, fontSize: 35.sp, color: Colors.white),)),
              ),
              Container(
                width: 420.w,
                height: 24.h,
                margin: EdgeInsets.only(left: 40.r, bottom: 0, top: 10.r),
                child: Text("The best food ordering and delivery app of the century", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w400, fontSize: 15.sp, color: Color(0xffFFFFFF)),),
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SignIn()));
                },
                child: Container(
                  height: 60.h,
                  width: 390.w,
                  margin: EdgeInsets.only(top: 25.r),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    gradient: LinearGradient(colors: [Color(0xffFF1843), Color(0xffFF7E95)],begin: Alignment.topCenter, end: Alignment.bottomCenter)
                  ),
                  child: Center(child: Text("Next", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w600, fontSize: 22.sp, color: Colors.white),)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


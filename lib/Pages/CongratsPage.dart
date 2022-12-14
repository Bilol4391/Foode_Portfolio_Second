import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foode/Pages/HomePage.dart';
import 'package:google_fonts/google_fonts.dart';

class CongratsPage extends StatefulWidget {
  const CongratsPage({Key? key}) : super(key: key);

  @override
  State<CongratsPage> createState() => _CongratsPageState();
}

class _CongratsPageState extends State<CongratsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 833.h,
              width: 430.w,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/image/Rectangle 23.02.07.png"),opacity: 0.4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 178.w,
                    height: 173.h,
                    margin: EdgeInsets.only(top: 200.r),
                    child: Image.asset("assets/image/Group 01.29.35.png"),
                  ),
                  22.h.verticalSpace,
                  Text("Congrats!", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w600, fontSize: 32, color: Color(0xffF43F5E)),),
                  22.h.verticalSpace,
                  Text("Your profile is ready to use", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w400, fontSize: 18, color: Color(0xff09101D)),),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => HomePage()));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 56.h,
                      margin: EdgeInsets.symmetric(horizontal: 25.r),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100.r)),
                          gradient: LinearGradient(colors: [Color(0xffFF7E95), Color(0xffFF1843)],begin: Alignment.topLeft, end: Alignment.bottomRight),
                    ),child: Center(child: Text("Next", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w600, fontSize: 18, color: Color(0xffffffff), ),)),
                    ),
                  )],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

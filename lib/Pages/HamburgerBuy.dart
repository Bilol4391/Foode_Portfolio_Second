import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HamburgerBuy extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  final Color listOfColor;
  final Color listOfTextColor;
  const HamburgerBuy({Key? key, required this.image, required this.title, required this.text, required this.listOfColor, required this.listOfTextColor}) : super(key: key);

  @override


  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  }, child: Container(
                  width: 80.w,
                  height: 50.h,
                  margin: EdgeInsets.only(left: 20.r, top: 0.r),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100.r)),
                      border: Border.all(color: Color(0xff777777).withOpacity(0.2))
                  ),
                  child: Icon(Icons.arrow_back, color: Color(0xff777777),),
                ),
                ),
                Padding(padding: EdgeInsets.only(left: 65.r, top: 0.r),child: Text("Buy Now", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w600, fontSize: 20.sp, color: Color(0xff4B4B4B)),))
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 200.w,
                  height: 85.h,
                  margin: EdgeInsets.only(top: 30.r, left: 20.r),
                  child: Text("Buy Now Hamburger", style: GoogleFonts.raleway(fontWeight: FontWeight.w700, height: 1.3.r, fontSize: 28.sp, color: Color(0xff194B38)),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 80.r, left: 100.r),
                  child: Text("12/15/2022", style: GoogleFonts.montserrat(fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff9C9C9C)),),
                ),
              ],
            ),
            Container(
              width: 420.w,
              height: 200.h,
              margin: EdgeInsets.only(left: 22.r, right: 22, top: 25.r),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Color(0xffFF7E95), Color(0xffFF1843)], begin: Alignment.topLeft, end: Alignment.bottomRight),
                borderRadius: BorderRadius.all(Radius.circular(30.r)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Image.asset(image),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          title,
                          style: GoogleFonts.sourceSansPro(
                              fontWeight: FontWeight.w600,
                              color: listOfTextColor,
                              fontSize: 18.sp,
                              letterSpacing: 0.7.r),
                        ),
                        margin: EdgeInsets.only(left: 0.r, top: 33.r),
                      ),
                      Container(
                        child: Text(
                          text,
                          style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w600,
                              color: listOfTextColor,
                              fontSize: 18.sp,
                              letterSpacing: 0.7.r),
                        ),
                        margin: EdgeInsets.only(left: 0.r, top: 15.r),
                      ),
                      Container(
                        width: 120.w,
                        height: 37.h,
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.all(Radius.circular(100.r)),
                          color: listOfColor,
                        ),
                        margin: EdgeInsets.only(left: 0.r, top: 25.r),
                        child: Center(
                            child: Text(
                              "Buy now",
                              style: GoogleFonts.sourceSansPro(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: listOfTextColor),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 33.h,),
            Padding(padding: EdgeInsets.only(left: 26) ,child: Text("Details", style: GoogleFonts.raleway(fontWeight: FontWeight.w600, fontSize: 16.sp, color: Color(0xff4B4B4B)),)),
            SizedBox(height: 12.h,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 26.r) ,child: Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Quis nostrud exercitation ullamco laboris nisi ut.", style: GoogleFonts.raleway(fontSize: 14.sp, fontWeight: FontWeight.w500, color: Color(0xff9C9C9C), letterSpacing: 0.5.r, height: 1.6.r),)),
            SizedBox(height: 35.h,),
            Padding(padding: EdgeInsets.only(left: 26.r) ,child: Text("How to use", style: GoogleFonts.raleway(fontWeight: FontWeight.w600, fontSize: 16.sp, color: Color(0xff4B4B4B)),)),
            SizedBox(height: 15.h,),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 44.r, top: 6.r),
                  child: Icon(Icons.circle, color: Color(0xff9C9C9C), size: 5.sp,),
                ),
                Padding(padding: EdgeInsets.only(left: 8.r) ,child: Text("Lorem ipsum are dolor sit amet, are adipisicing", style: GoogleFonts.raleway(fontSize: 14.sp, fontWeight: FontWeight.w500, color: Color(0xff9C9C9C), letterSpacing: 0.5.r, height: 1.6.r),)),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 44.r, top: 6.r),
                  child: Icon(Icons.circle, color: Color(0xff9C9C9C), size: 5.sp,),
                ),
                Padding(padding: EdgeInsets.only(left: 8.r) ,child: Text("sed do eiusmod tempor incididunt ut labore", style: GoogleFonts.raleway(fontSize: 14.sp, fontWeight: FontWeight.w500, color: Color(0xff9C9C9C), letterSpacing: 0.5.r, height: 1.6.r),)),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 44.r, top: 6.r),
                  child: Icon(Icons.circle, color: Color(0xff9C9C9C), size: 5.sp,),
                ),
                Padding(padding: EdgeInsets.only(left: 8.r) ,child: Text("Ut enim ad minim veniam", style: GoogleFonts.raleway(fontSize: 14.sp, fontWeight: FontWeight.w500, color: Color(0xff9C9C9C), letterSpacing: 0.5, height: 1.6.r),)),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: double.infinity,
                height: 56.h,
                margin: EdgeInsets.only(left: 22.r, right: 22.r, top: 80.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100.r)),
                  gradient: LinearGradient(colors: [Color(0xffFF7E95), Color(0xffFF1843)],begin: Alignment.topLeft, end: Alignment.bottomRight),
                ),child: Center(child: Text("Buy Now", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w600, fontSize: 18.sp, color: Color(0xffffffff), ),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

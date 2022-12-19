import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/Pages/CongratsPage.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationPage extends StatefulWidget {
  LocationPage({Key? key}) : super(key: key);

  @override
  TextEditingController location_picker = TextEditingController();

  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  bool isLocation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 36.r,
                    width: 36.r,
                    padding: EdgeInsets.only(left: 6.r),
                    margin: EdgeInsets.only(left: 20.r, top: 0.r),
                    decoration: BoxDecoration(
                        color: Color(0xffF43F5E).withOpacity(0.1),
                        borderRadius: BorderRadius.all(Radius.circular(10.r))),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 17,
                      color: Color(0xffF43F5E).withOpacity(0.7),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15.r, top: 3.r),
                  child: Text(
                    "Set your location",
                    style: GoogleFonts.sourceSansPro(
                        color: Color(0xff09101D),
                        fontWeight: FontWeight.w600,
                        fontSize: 26.sp),
                  ),
                ),
              ],
            ),
            25.r.verticalSpace,
            Container(
              height: 48.h,
              width: 380.w,
              margin: EdgeInsets.only(left: 25.r),
              child: Text(
                "This data will be displayed in your account profile for security",
                style: GoogleFonts.sourceSansPro(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: Color(0xff09101D),
                    height: 1.4),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                20.r.verticalSpace,
                GestureDetector(
                  onTap: () {
                    if (isLocation == true){
                      isLocation = false;
                      setState(() {

                      });
                    } else{
                      isLocation = true;
                      setState(() {

                      });
                    }
                    setState(() {});
                  },
                  child: isLocation == false
                      ? Container(
                          height: 170.h,
                          width: 380.w,
                          decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.r)),
                              border: Border.all(
                                color: Color(0xffEBEEF2),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 1,
                                  offset: Offset(-0, 1),
                                )
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 80.h,
                                width: 80.w,
                                margin: EdgeInsets.only(top: 12.r),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffF43F5E).withOpacity(0.1.r),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: SvgPicture.asset(
                                    "assets/svg/location.svg",
                                    color: Color(0xffFF1843),
                                    width: 32.w,
                                    height: 32.h,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 15.r),
                                child: Text(
                                  "Set Location",
                                  style: GoogleFonts.sourceSansPro(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp,
                                      color: Color(0xff09101D)),
                                ),
                              ),
                            ],
                          ),
                        )
                      : Column(
                    children: [
                      Container(
                        child: SizedBox(
                          height: 520.h,
                           width: double.infinity,
                            child: Image.asset("assets/image/Auto Layout Vertical.png", fit: BoxFit.cover,)),
                      ),
                      Container(
                        width: 380.w,
                        height: 96.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.r),
                          border: Border.all(color: Color(0xffFF1843), width: 2),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 44.r,
                              height: 44.r,
                              child: Icon(Icons.location_on, color: Color(0xffFF1843), size: 20.sp,),
                              margin: EdgeInsets.only(left: 30),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffF43F5E).withOpacity(0.1.r)
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(padding: EdgeInsets.only(top: 20.r, left: 15.r),child: Text("Location", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff6D7580),),)),
                                  Padding(padding: EdgeInsets.only(top: 5.r, left: 15.r),child: Text("Bung Tomo St. 109", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w600, fontSize: 18.sp, color: Color(0xff09101D),),)),
                                ],
                              ),
                            ),
                            Container(
                              width: 35.w,
                              height: 35.h,
                              margin: EdgeInsets.only(left: 85.r),
                              child: Icon(Icons.edit, color: Colors.white, size: 18.sp,),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                gradient: LinearGradient(colors: [Color(0xffFF7E95), Color(0xffFF1843)], begin: Alignment.topLeft, end: Alignment.bottomRight)
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ),
              ],
            ),
            Spacer(),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => CongratsPage()));
              },
              child: Container(
                width: double.infinity,
                height: 56.h,
                margin: EdgeInsets.symmetric(horizontal: 25.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100.r)),
                  gradient:  LinearGradient(
                      colors: isLocation == true ? [Color(0xffFF7E95), Color(0xffFF1843)] : [Color(0xffFF7E95).withOpacity(0.5), Color(0xffFF1843).withOpacity(0.5)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                ),
                child: Center(
                    child: isLocation == true ? Text(
                  "Set Location",
                  style: GoogleFonts.sourceSansPro(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp,
                    color: Color(0xffffffff),
                  ),
                ): Text(
                      "Next",
                      style: GoogleFonts.sourceSansPro(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        color: Color(0xffffffff),
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

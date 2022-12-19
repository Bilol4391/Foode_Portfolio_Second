import 'dart:io';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/Pages/CongratsPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'HamburgerBuy.dart';

class PopularMenu extends StatefulWidget {
  const PopularMenu({Key? key}) : super(key: key);

  @override
  State<PopularMenu> createState() => _PopularMenuState();
}

class _PopularMenuState extends State<PopularMenu> {

  String name = "";
  String imagePath = "";

  Future <void> getInfo() async {
    SharedPreferences _local = await SharedPreferences.getInstance();
    name = _local.getString("name") ?? "";
    imagePath = _local.getString("image") ?? "";
    setState(() {});
  }

  @override
  void initState (){
    getInfo();
    super.initState();
  }

  List listOfImage = ["assets/Rectangle 65.png", "assets/fruits.jpeg"];

  List<Color> listOfColor = [Color(0xff194B38), Colors.white];

  List listOfButtonColor = [
    Color(0xffFFB800),
    Color(0xffFFB800),
  ];

  List listOfHamburger = [
    "assets/image/burger.png",
    "assets/image/burger.png",
  ];


  List listOfPercentage = [
    "45%",
    "15%",
  ];

  List listOfTitle = [
    "Special Deal for",
    "Special Deal for",
  ];

  List listOfText = [
    "December",
    "December",
  ];

  List listOfButtonTextColor = [
    Colors.white,
    Colors.white,
    Colors.white,
  ];

  List listOfCategoriesImage = [
    "assets/image/Vector 16.45.02.png",
    "assets/image/Vector 16.44.46.png",
    "assets/image/Vector.png",
    "assets/image/Vector 16.45.27.png",
    "assets/image/Vector 16.45.39.png",
    "assets/image/Vector 16.45.52.png",
  ];

  List listOfCategoriesText = [
    "Lovy Food",
    "Cloudy Resto",
    "Circlo Resto",
    "Haty Food",
    "Hearthy Resto",
    "Recto Food"
  ];

  List listOfMinute = [
    "10 mins",
    "12 mins",
    "11 mins",
    "15 mins",
    "13 mins",
    "17 mins",
  ];

  List listOfCategoriesColor = [
    Color(0xffEBF4F1),
    Color(0xffF3F3EA),
    Color(0xffF3E9DD),
    Color(0xffF8ECEC),
    Color(0xffF8F5DE),
    Color(0xffF9E9D2),
  ];



  List listOfPopularImage = [
    "assets/fruits2.png",
    "assets/vegie2.png",
    "assets/bread2.png",
    "assets/meat2.png",
    "assets/cheers.png",
    "assets/drinks.png"
  ];

  List listOfPopularPrice = [
    "\$ 1.8",
    "\$ 1.3",
    "\$ 1.7",
    "\$ 1.0",
    "\$ 1.8",
    "\$ 1.3",
  ];


  int _currentIndex = 0;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 36.h,
                      height: 36.h,
                      margin: EdgeInsets.only(top: 0.r, left: 30.r),
                      decoration: BoxDecoration(
                        color: Color(0xffF43F5E).withOpacity(0.1.r),
                        borderRadius: BorderRadius.all(Radius.circular(10.w)),
                      ),
                      child: Padding(padding: EdgeInsets.only(left: 11.r),child: Icon(Icons.arrow_back_ios, color: Color(0xffF43F5E).withOpacity(0.7), size: 18.sp,)),
                    ),
                  ),
                  SizedBox(
                    width: 270.h,
                    child: Container(
                      margin: EdgeInsets.only(left: 20.r, top: 0.r),
                      child: Text("Popular Menu", overflow: TextOverflow.ellipsis, maxLines: 1, style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w600, fontSize: 26.sp, color: Color(0xff09101D)),),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 316.w,
                        height: 45.h,
                        margin: EdgeInsets.only(top: 45.r, left: 20.r, right: 20.r),
                        child: TextFormField(
                          style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp,
                              letterSpacing: 0.7.r,
                              color: Color(0xff194B38)),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 30.r),
                            filled: true,
                            suffixIcon:
                            Container(margin: EdgeInsets.only(right: 20.r),child: Icon(Icons.search_rounded, color: Color(0xff858C94))),
                            hintText: "Search",
                            hintStyle: GoogleFonts.sourceSansPro(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: Color(0xff09101D)),
                            fillColor: Color(0xffF4F6F9),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(100.r)),
                              borderSide: BorderSide(
                                  color: Color(0xffF4F6F9)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(100.r)),
                              borderSide: BorderSide(
                                  color: Color(0xffF4F6F9)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(100.r)),
                              borderSide: BorderSide(
                                  color: Color(0xffF4F6F9)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 44.r,
                        height: 44.r,
                        margin: EdgeInsets.only(top: 45.r, left: 5.r),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            color: Color(0xffF43F5E).withOpacity(0.1),
                            image: DecorationImage(
                              image:
                              AssetImage("assets/image/filter list.png"),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    height: 88.h,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 5.r, left: 22.r, right: 22),
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.all(Radius.circular(24.r)),
                        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.6), blurRadius: 0.1,)]
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 64.h,
                          width: 64.w,
                          margin: EdgeInsets.only(left: 15.r, top: 10),
                          child: Image.asset("assets/image/Rectangle 00.31.43.png"),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 200.h,
                              margin: EdgeInsets.only(left: 17.r, top: 15),
                              child: Text("Original Salad", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w600, fontSize: 18.sp, color: Color(0xff09101D)),),
                            ),
                            Container(
                              width: 200.h,
                              margin: EdgeInsets.only(left: 17.r, top: 10),
                              child: Text("Lovy Food", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff858C94)),),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30.r, top: 17.r),
                          width: 50.h,
                          child: Text("\$8", style: GoogleFonts.sourceSansPro(fontSize: 29.sp, fontWeight: FontWeight.w600, color: Color(0xffF43F5E)),),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 88.h,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 25.r, left: 22.r, right: 22),
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.all(Radius.circular(24.r)),
                        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.6), blurRadius: 0.1,)]
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 64.h,
                          width: 64.w,
                          margin: EdgeInsets.only(left: 15.r, top: 10),
                          child: Image.asset("assets/image/Rectangle 2.png"),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 200.h,
                              margin: EdgeInsets.only(left: 17.r, top: 15),
                              child: Text("Fresh Salad", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w600, fontSize: 18.sp, color: Color(0xff09101D)),),
                            ),
                            Container(
                              width: 200.h,
                              margin: EdgeInsets.only(left: 17.r, top: 10),
                              child: Text("Cloudy Resto", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff858C94)),),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 22.r, top: 17.r),
                          width: 50.h,
                          child: Text("\$10", style: GoogleFonts.sourceSansPro(fontSize: 29.sp, fontWeight: FontWeight.w600, color: Color(0xffF43F5E)),),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 88.h,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 25.r, left: 22.r, right: 22),
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.all(Radius.circular(24.r)),
                        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.6), blurRadius: 0.1,)]
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 64.h,
                          width: 64.w,
                          margin: EdgeInsets.only(left: 15.r, top: 10),
                          child: Image.asset("assets/image/Rectangle 3.png"),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 200.h,
                              margin: EdgeInsets.only(left: 17.r, top: 15),
                              child: Text("Yummie Ice Cream", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w600, fontSize: 18.sp, color: Color(0xff09101D)),),
                            ),
                            Container(
                              width: 200.h,
                              margin: EdgeInsets.only(left: 17.r, top: 10),
                              child: Text("Circlo Resto", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff858C94)),),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30.r, top: 17.r),
                          width: 50.h,
                          child: Text("\$6", style: GoogleFonts.sourceSansPro(fontSize: 29.sp, fontWeight: FontWeight.w600, color: Color(0xffF43F5E)),),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 88.h,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 25.r, left: 22.r, right: 22),
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.all(Radius.circular(24.r)),
                        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.6), blurRadius: 0.1,)]
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 64.h,
                          width: 64.w,
                          margin: EdgeInsets.only(left: 15.r, top: 10),
                          child: Image.asset("assets/image/Rectangle 4.png"),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 200.h,
                              margin: EdgeInsets.only(left: 17.r, top: 15),
                              child: Text("Vegan Special", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w600, fontSize: 18.sp, color: Color(0xff09101D)),),
                            ),
                            Container(
                              width: 200.h,
                              margin: EdgeInsets.only(left: 17.r, top: 10),
                              child: Text("Haty Food", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff858C94)),),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20.r, top: 17.r),
                          width: 50.h,
                          child: Text("\$11", style: GoogleFonts.sourceSansPro(fontSize: 29.sp, fontWeight: FontWeight.w600, color: Color(0xffF43F5E)),),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 88.h,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 25.r, left: 22.r, right: 22),
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.all(Radius.circular(24.r)),
                        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.6), blurRadius: 0.1,)]
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 64.h,
                          width: 64.w,
                          margin: EdgeInsets.only(left: 15.r, top: 10),
                          child: Image.asset("assets/image/Rectangle 5.png"),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 200.h,
                              margin: EdgeInsets.only(left: 17.r, top: 15),
                              child: Text("Mixed Pasta", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w600, fontSize: 18.sp, color: Color(0xff09101D)),),
                            ),
                            Container(
                              width: 200.h,
                              margin: EdgeInsets.only(left: 17.r, top: 10),
                              child: Text("Recto Food", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff858C94)),),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 18.r, top: 17.r),
                          width: 50.h,
                          child: Text("\$13", style: GoogleFonts.sourceSansPro(fontSize: 29.sp, fontWeight: FontWeight.w600, color: Color(0xffF43F5E)),),
                        ),
                      ],
                    ),
                  ),
                  20.verticalSpace,
                  Container(
                    height: 88.h,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 5.r, left: 22.r, right: 22),
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.all(Radius.circular(24.r)),
                        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.6), blurRadius: 0.1,)]
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 64.h,
                          width: 64.w,
                          margin: EdgeInsets.only(left: 15.r, top: 10),
                          child: Image.asset("assets/image/Rectangle 00.31.43.png"),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 200.h,
                              margin: EdgeInsets.only(left: 17.r, top: 15),
                              child: Text("Original Salad", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w600, fontSize: 18.sp, color: Color(0xff09101D)),),
                            ),
                            Container(
                              width: 200.h,
                              margin: EdgeInsets.only(left: 17.r, top: 10),
                              child: Text("Lovy Food", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff858C94)),),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30.r, top: 17.r),
                          width: 50.h,
                          child: Text("\$8", style: GoogleFonts.sourceSansPro(fontSize: 29.sp, fontWeight: FontWeight.w600, color: Color(0xffF43F5E)),),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 88.h,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 25.r, left: 22.r, right: 22),
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.all(Radius.circular(24.r)),
                        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.6), blurRadius: 0.1,)]
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 64.h,
                          width: 64.w,
                          margin: EdgeInsets.only(left: 15.r, top: 10),
                          child: Image.asset("assets/image/Rectangle 2.png"),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 200.h,
                              margin: EdgeInsets.only(left: 17.r, top: 15),
                              child: Text("Fresh Salad", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w600, fontSize: 18.sp, color: Color(0xff09101D)),),
                            ),
                            Container(
                              width: 200.h,
                              margin: EdgeInsets.only(left: 17.r, top: 10),
                              child: Text("Cloudy Resto", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff858C94)),),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 22.r, top: 17.r),
                          width: 50.h,
                          child: Text("\$10", style: GoogleFonts.sourceSansPro(fontSize: 29.sp, fontWeight: FontWeight.w600, color: Color(0xffF43F5E)),),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 88.h,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 25.r, left: 22.r, right: 22),
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.all(Radius.circular(24.r)),
                        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.6), blurRadius: 0.1,)]
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 64.h,
                          width: 64.w,
                          margin: EdgeInsets.only(left: 15.r, top: 10),
                          child: Image.asset("assets/image/Rectangle 3.png"),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 200.h,
                              margin: EdgeInsets.only(left: 17.r, top: 15),
                              child: Text("Yummie Ice Cream", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w600, fontSize: 18.sp, color: Color(0xff09101D)),),
                            ),
                            Container(
                              width: 200.h,
                              margin: EdgeInsets.only(left: 17.r, top: 10),
                              child: Text("Circlo Resto", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff858C94)),),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30.r, top: 17.r),
                          width: 50.h,
                          child: Text("\$6", style: GoogleFonts.sourceSansPro(fontSize: 29.sp, fontWeight: FontWeight.w600, color: Color(0xffF43F5E)),),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 88.h,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 25.r, left: 22.r, right: 22),
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.all(Radius.circular(24.r)),
                        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.6), blurRadius: 0.1,)]
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 64.h,
                          width: 64.w,
                          margin: EdgeInsets.only(left: 15.r, top: 10),
                          child: Image.asset("assets/image/Rectangle 4.png"),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 200.h,
                              margin: EdgeInsets.only(left: 17.r, top: 15),
                              child: Text("Vegan Special", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w600, fontSize: 18.sp, color: Color(0xff09101D)),),
                            ),
                            Container(
                              width: 200.h,
                              margin: EdgeInsets.only(left: 17.r, top: 10),
                              child: Text("Haty Food", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff858C94)),),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20.r, top: 17.r),
                          width: 50.h,
                          child: Text("\$11", style: GoogleFonts.sourceSansPro(fontSize: 29.sp, fontWeight: FontWeight.w600, color: Color(0xffF43F5E)),),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 88.h,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 25.r, left: 22.r, right: 22),
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.all(Radius.circular(24.r)),
                        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.6), blurRadius: 0.1,)]
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 64.h,
                          width: 64.w,
                          margin: EdgeInsets.only(left: 15.r, top: 10),
                          child: Image.asset("assets/image/Rectangle 5.png"),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 200.h,
                              margin: EdgeInsets.only(left: 17.r, top: 15),
                              child: Text("Mixed Pasta", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w600, fontSize: 18.sp, color: Color(0xff09101D)),),
                            ),
                            Container(
                              width: 200.h,
                              margin: EdgeInsets.only(left: 17.r, top: 10),
                              child: Text("Recto Food", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff858C94)),),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 18.r, top: 17.r),
                          width: 50.h,
                          child: Text("\$13", style: GoogleFonts.sourceSansPro(fontSize: 29.sp, fontWeight: FontWeight.w600, color: Color(0xffF43F5E)),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding:  EdgeInsets.only(left: 38.w, right: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(24)),
          child: BottomNavyBar(
            selectedIndex: _currentIndex,
            showElevation: true,
            itemCornerRadius: 12,
            curve: Curves.linear,
            onItemSelected: (index) => setState(() => _currentIndex = index),
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                icon: Container(
                  height: 24.h,
                  width: 24.h,
                  margin: EdgeInsets.only(left: 5.r),
                  child: SvgPicture.asset("assets/svg/home-svgrepo-com.svg", color: Color(0xffFF7E95),),
                ),
                title: Text('Home'),
                activeColor: Color(0xffFF1843),
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Container(
                  height: 24.h,
                  width: 24.h,
                  margin: EdgeInsets.only(left: 5.r),
                  child: SvgPicture.asset("assets/svg/bag-svgrepo-com.svg", color: Color(0xffFF7E95),),
                ),
                title: Text('Shop'),
                activeColor: Colors.purpleAccent,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Container(
                  height: 24.h,
                  width: 24.h,
                  margin: EdgeInsets.only(left: 5.r),
                  child: SvgPicture.asset("assets/svg/message-svgrepo-com.svg", color: Color(0xffFF7E95),),
                ),
                title: Text(
                  'Messages test for mes teset test test ',
                ),
                activeColor: Colors.pink,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Container(
                  height: 24.h,
                  width: 24.h,
                  margin: EdgeInsets.only(right: 9.r),
                  child: SvgPicture.asset("assets/svg/person-svgrepo-com.svg", color: Color(0xffFF7E95),),
                ),
                title: Text('Person'),
                activeColor: Colors.blue,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:io';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/Pages/CongratsPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'HamburgerBuy.dart';

class PopularRestaurant extends StatefulWidget {
  const PopularRestaurant({Key? key}) : super(key: key);

  @override
  State<PopularRestaurant> createState() => _PopularRestaurantState();
}

class _PopularRestaurantState extends State<PopularRestaurant> {

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
    'assets/image/Vector 16.45.52.png'
  ];

  List listOfCategoriesText = [
    "Lovy Food",
    "Cloudy Resto",
    "Circlo Resto",
    "Haty Food",
    "Hearthy Resto",
    "Recto Food",
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
                    child: Text("Popular Restaurant", overflow: TextOverflow.ellipsis, maxLines: 1, style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w600, fontSize: 26.sp, color: Color(0xff09101D)),),
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
                SizedBox(
                  height: 672.h,
                  child: Padding(
                    padding:  EdgeInsets.only(left: 15.w, right: 15.w),
                    child: GridView.builder(
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 160.w,
                            margin: EdgeInsets.only(top: 25.r, left: 10.r, right: 10),
                            decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.all(Radius.circular(24.r))
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 45.r, top: 20.r),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(25.r)),
                                  ),
                                  child: Image.asset(listOfCategoriesImage[index]),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 0.r, top: 30.r),
                                  child: Center(
                                    child: Text(
                                      listOfCategoriesText[index],
                                      style: GoogleFonts.sourceSansPro(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18.sp,
                                          color: Color(0xff09101D)),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 0.r, top: 10.r),
                                  child: Center(
                                    child: Text(
                                      listOfMinute[index],
                                      style: GoogleFonts.sourceSansPro(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp,
                                          color: Color(0xff6D7580)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }, gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 300,
                        childAspectRatio: 3 / 3,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 0),
                  ),
                ),
                )],
            ),
          ],
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

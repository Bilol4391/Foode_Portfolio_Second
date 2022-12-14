import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/Pages/paymentPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class FillBio extends StatefulWidget {
  const FillBio({Key? key}) : super(key: key);

  @override
  State<FillBio> createState() => _FillBioState();
}

class _FillBioState extends State<FillBio> {

  String? value = "Male";
  String? dateText = "";
  TextEditingController birth = TextEditingController();
  var items = [
    "Male",
    "Female",
  ];

  bool isFullnameEmpty = false;
  bool isNicknameEmpty = false;
  bool isPhoneEmpty = false;
  bool isGenderEmpty = false;
  bool isBirthEmpty = false;
  bool isAddressEmpty = false;
  bool isDone = false;


  TextEditingController fullname = TextEditingController();
  TextEditingController nickname = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController datebirth = TextEditingController();
  TextEditingController adress = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 36.r,
                    width: 36.r,
                    padding: EdgeInsets.only(left: 6.r),
                    margin: EdgeInsets.only(left: 22.r, top: 70.r),
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
                  margin: EdgeInsets.only(left: 20.r, top: 70.r),
                  child: Text(
                    "Fill in your job",
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
              margin: EdgeInsets.only(left: 30.r),
              child: Text(
                "This data will be displayed in your account profile for security",
                style: GoogleFonts.sourceSansPro(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: Color(0xff09101D),
                    height: 1.4),
              ),
            ),
            Row(
              children: [
                Container(
                  width: 70.w,
                  height: 20.h,
                  child: Text(
                    "Full Name",
                    style: GoogleFonts.sourceSansPro(
                      color: Color(0xff2C3A4B),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  margin: EdgeInsets.only(left: 50.r, top: 22.r),
                ),
                Container(
                    height: 20.h,
                    width: 7.w,
                    margin: EdgeInsets.only(left: 1.r, top: 22.r),
                    child: Text(
                      "*",
                      style: GoogleFonts.sourceSansPro(
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                          color: Color(0xffDA1414).withOpacity(0.8)),
                    )),
              ],
            ),
            13.r.verticalSpace,

            Container(
              height: 50.r,
              margin: EdgeInsets.symmetric(horizontal: 22),
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: fullname,
                onChanged: (a) {
                  isFullnameEmpty = false;
                  if (fullname.text.isNotEmpty && nickname.text.isNotEmpty && phone.text.isNotEmpty &&  adress.text.isNotEmpty){
                    isDone = true;
                  } else {
                    isDone = false;
                  }
                  setState(() {});
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffffffff),
                  hintText: "Enter your Full Name...",
                  hintStyle: GoogleFonts.sourceSansPro(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.withOpacity(0.7),
                      fontSize: 15),
                  contentPadding: EdgeInsets.only(left: 30),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100.r)),
                    borderSide: BorderSide(color: Color(0xffEBEEF2)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100.r)),
                    borderSide: BorderSide(color: Color(0xffEBEEF2)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100.r)),
                    borderSide: BorderSide(color: Color(0xffEBEEF2)),
                  ),
                ),
              ),
            ),
            isFullnameEmpty
                ? Padding(
              padding: EdgeInsets.only(left: 50.r, top: 5.r),
              child: Text(
                "Full Name is requirment",
                style: TextStyle(color: Colors.red),
              ),
            )
                : SizedBox.shrink(),

            Row(
              children: [
                Container(
                  width: 75.w,
                  height: 20.h,
                  child: Text(
                    "Nick Name",
                    style: GoogleFonts.sourceSansPro(
                      color: Color(0xff2C3A4B),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  margin: EdgeInsets.only(left: 50.r, top: 22.r),
                ),
                Container(
                    height: 20.h,
                    width: 7.w,
                    margin: EdgeInsets.only(left: 1.r, top: 22.r),
                    child: Text(
                      "*",
                      style: GoogleFonts.sourceSansPro(
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                          color: Color(0xffDA1414).withOpacity(0.8)),
                    )),
              ],
            ),
            13.r.verticalSpace,
            Container(
              height: 50.r,
              margin: EdgeInsets.symmetric(horizontal: 22),
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: nickname,
                onChanged: (a) {
                  isNicknameEmpty = false;
                  if (fullname.text.isNotEmpty && nickname.text.isNotEmpty && phone.text.isNotEmpty &&  adress.text.isNotEmpty){
                    isDone = true;
                  } else {
                    isDone = false;
                  }
                  setState(() {});
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffffffff),
                  hintText: "Enter your Nick Name...",
                  hintStyle: GoogleFonts.sourceSansPro(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.withOpacity(0.7),
                      fontSize: 15),
                  contentPadding: EdgeInsets.only(left: 30),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100.r)),
                    borderSide: BorderSide(color: Color(0xffEBEEF2)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100.r)),
                    borderSide: BorderSide(color: Color(0xffEBEEF2)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100.r)),
                    borderSide: BorderSide(color: Color(0xffEBEEF2)),
                  ),
                ),
              ),
            ),
            isNicknameEmpty
                ? Padding(
              padding: EdgeInsets.only(left: 50.r, top: 5.r),
              child: Text(
                "Nick Name is requirment",
                style: TextStyle(color: Colors.red),
              ),
            )
                : SizedBox.shrink(),

            Row(
              children: [
                Container(
                  width: 104.w,
                  height: 20.h,
                  child: Text(
                    "Phone Number",
                    style: GoogleFonts.sourceSansPro(
                      color: Color(0xff2C3A4B),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  margin: EdgeInsets.only(left: 50.r, top: 22.r),
                ),
                Container(
                    height: 20.h,
                    width: 7.w,
                    margin: EdgeInsets.only(left: 1.r, top: 22.r),
                    child: Text(
                      "*",
                      style: GoogleFonts.sourceSansPro(
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                          color: Color(0xffDA1414).withOpacity(0.8)),
                    )),
              ],
            ),
            13.verticalSpace,
            Container(
              height: 50.r,
              margin: EdgeInsets.symmetric(horizontal: 22),
              child: TextFormField(
                keyboardType: TextInputType.numberWithOptions(),
                controller: phone,
                onChanged: (a) {
                  isPhoneEmpty = false;
                  if (fullname.text.isNotEmpty && nickname.text.isNotEmpty && phone.text.isNotEmpty &&  adress.text.isNotEmpty){
                      isDone = true;
                  } else {
                    isDone = false;
                  }
                  setState(() {});
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffffffff),
                  hintText: "Enter your Phone Number...",
                  hintStyle: GoogleFonts.sourceSansPro(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.withOpacity(0.7),
                      fontSize: 15),
                  contentPadding: EdgeInsets.only(left: 30),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100.r)),
                    borderSide: BorderSide(color: Color(0xffEBEEF2)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100.r)),
                    borderSide: BorderSide(color: Color(0xffEBEEF2)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100.r)),
                    borderSide: BorderSide(color: Color(0xffEBEEF2)),
                  ),
                ),
              ),
            ),
            isPhoneEmpty
                ? Padding(
              padding: EdgeInsets.only(left: 50.r, top: 5.r),
              child: Text(
                "Phone Number is requirment",
                style: TextStyle(color: Colors.red),
              ),
            )
                : SizedBox.shrink(),

            Row(
              children: [
                Container(
                  width: 51.w,
                  height: 20.h,
                  child: Text(
                    "Gender",
                    style: GoogleFonts.sourceSansPro(
                      color: Color(0xff2C3A4B),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  margin: EdgeInsets.only(left: 50.r, top: 22.r),
                ),
                Container(
                    height: 20.h,
                    width: 7.w,
                    margin: EdgeInsets.only(left: 1.r, top: 22.r),
                    child: Text(
                      "*",
                      style: GoogleFonts.sourceSansPro(
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                          color: Color(0xffDA1414).withOpacity(0.8)),
                    )),
              ],
            ),
            13.r.verticalSpace,
            Container(
              margin: EdgeInsets.symmetric(horizontal: 22.r),
              height: 50.h,

              child: DropdownButtonFormField(

                icon: Visibility(visible: false, child: Icon(Icons.add),),
                style: TextStyle(color: Colors.black),
                value: value,

                decoration: InputDecoration(

                  suffixIcon: Container(margin: EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.arrow_drop_down_sharp, color: Color(0xff858C94),
                        size: 30.sp,)),
                  contentPadding: EdgeInsets.only(left: 30.r),
                  filled: true,
                  fillColor: Color(0xffffffff),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100.r)),
                    borderSide: BorderSide(color: Color(0xffEBEEF2)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100.r)),
                    borderSide: BorderSide(color: Color(0xffEBEEF2)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100.r)),
                    borderSide: BorderSide(color: Color(0xffEBEEF2)),
                  ),
                ),
                items: items.map(
                      (e) =>
                      DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      ),
                ).toList(),
                onChanged: (newValue) {
                  value = newValue;
                  setState(() {});
                },
              ),
            ),

            Row(
              children: [
                Container(
                  width: 87.w,
                  height: 20.h,
                  child: Text(
                    "Date of Birth",
                    style: GoogleFonts.sourceSansPro(
                      color: Color(0xff2C3A4B),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  margin: EdgeInsets.only(left: 50.r, top: 22.r),
                ),
                Container(
                    height: 20.h,
                    width: 7.w,
                    margin: EdgeInsets.only(left: 1.r, top: 22.r),
                    child: Text(
                      "*",
                      style: GoogleFonts.sourceSansPro(
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                          color: Color(0xffDA1414).withOpacity(0.8)),
                    )),
              ],
            ),
            13.r.verticalSpace,
            Container(
              height: 50.r,
              margin: EdgeInsets.symmetric(horizontal: 22.r),
              child: TextFormField(
                onTap: () {
                  showDatePicker(context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1950),
                      lastDate: DateTime.now(),).then((value) =>
                  birth.text = DateFormat("MMMM, dd, yyyy").format(value ?? DateTime.now()));
                  setState(() {});
                },
                controller: birth,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  suffixIcon: Container(margin: EdgeInsets.only(right: 6.r),child: IconButton(onPressed: () {  }, icon: SvgPicture.asset("assets/svg/calendar-svgrepo-com.svg", height: 22.h, width: 22.w,),)),
                  fillColor: Color(0xffffffff),
                  hintText: "Enter your birth date...",
                  hintStyle: GoogleFonts.sourceSansPro(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.withOpacity(0.7.r),
                      fontSize: 15),
                  contentPadding: EdgeInsets.only(left: 30.r),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100.r)),
                    borderSide: BorderSide(color: Color(0xffEBEEF2)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100.r)),
                    borderSide: BorderSide(color: Color(0xffEBEEF2)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100.r)),
                    borderSide: BorderSide(color: Color(0xffEBEEF2)),
                  ),
                ),
              ),
            ),


            Row(
              children: [
                Container(
                  width: 51.w,
                  height: 20.h,
                  child: Text(
                    "Address",
                    style: GoogleFonts.sourceSansPro(
                      color: Color(0xff2C3A4B),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  margin: EdgeInsets.only(left: 50.r, top: 22.r),
                ),
                Container(
                    height: 20.h,
                    width: 7.w,
                    margin: EdgeInsets.only(left: 1.r, top: 22.r),
                    child: Text(
                      "*",
                      style: GoogleFonts.sourceSansPro(
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                          color: Color(0xffDA1414).withOpacity(0.8)),
                    )),
              ],
            ),
            13.r.verticalSpace,
            Container(
              height: 50.r,
              margin: EdgeInsets.symmetric(horizontal: 22),
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: adress,
                onChanged: (a) {
                  isAddressEmpty = false;
                  if (fullname.text.isNotEmpty && nickname.text.isNotEmpty && phone.text.isNotEmpty &&  adress.text.isNotEmpty){
                    isDone = true;
                  } else {
                    isDone = false;
                  }
                  setState(() {});
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffffffff),
                  hintText: "Enter your Address...",
                  hintStyle: GoogleFonts.sourceSansPro(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.withOpacity(0.7),
                      fontSize: 15),
                  contentPadding: EdgeInsets.only(left: 30),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100.r)),
                    borderSide: BorderSide(color: Color(0xffEBEEF2)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100.r)),
                    borderSide: BorderSide(color: Color(0xffEBEEF2)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100.r)),
                    borderSide: BorderSide(color: Color(0xffEBEEF2)),
                  ),
                ),
              ),
            ),
            isAddressEmpty
                ? Padding(
              padding: EdgeInsets.only(left: 50.r, top: 5.r),
              child: Text(
                "Adress is requirment",
                style: TextStyle(color: Colors.red),
              ),
            )
                : SizedBox.shrink(),

            GestureDetector(
              onTap: (){
                if (fullname.text.isNotEmpty && nickname.text.isNotEmpty && phone.text.isNotEmpty  && adress.text.isNotEmpty){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>PaymentPage()));
                }
                else if (fullname.text.isEmpty && nickname.text.isEmpty && phone.text.isEmpty  && adress.text.isEmpty){
                  isFullnameEmpty = true;
                  isNicknameEmpty = true;
                  isPhoneEmpty = true;
                  isAddressEmpty = true;
                  setState(() {});
                } else if(isFullnameEmpty){
                  isFullnameEmpty = true;
                  setState(() {});
                } else if(isNicknameEmpty){
                  isNicknameEmpty = true;
                  setState(() {});
                } else if(isPhoneEmpty){
                  isPhoneEmpty = true;
                  setState(() {});
                }  else if(isAddressEmpty){
                  isAddressEmpty = true;
                  setState(() {});
                }
              },

              child: Container(
                width: 400.w,
                height: 63.h,
                margin: EdgeInsets.only(left: 22.r, right: 22.r, top: 20.r),
                decoration: BoxDecoration(
                  color: isDone ? Color(0xffF43F5E) : Color(0xffF43F5E).withOpacity(0.5),
                  borderRadius: BorderRadius.all(Radius.circular(33.r)),
                ),
                child: Center(child: Text("Next", style: GoogleFonts.sourceSansPro(fontSize: 20.sp, fontWeight: FontWeight.w600, color: Colors.white),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

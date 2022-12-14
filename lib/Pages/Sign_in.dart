import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foode/Pages/FillBio.dart';
import 'package:foode/Pages/Sign_up.dart';
import 'package:foode/Pages/Temp.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isRemember = false;
  bool isVisible = false;
  bool isEmailEmpty = false;
  bool isPasswordEmpty = false;
  bool isDone = false;
  bool isEmailIncorrect = false;
  bool isPasswordIncorrect = false;
  bool isPasswordValidate = false;

  String email_1 = "bilolabdunazarov8480@gmail.com";
  String password_1 = "bilol8480";

  TextEditingController emailController = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  // TextEditingController check = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 340.w,
                height: 200.h,
                margin: EdgeInsets.only(left: 40.r, top: 60.r),
                child: Image.asset("assets/image/group.png"),
              ),
              Container(
                width: 400.w,
                height: 40.h,
                margin: EdgeInsets.only(left: 15.r, top: 7.r),
                child: Center(
                    child: Text(
                  "Sign in to your account",
                  style: GoogleFonts.sourceSansPro(
                      fontWeight: FontWeight.w600,
                      fontSize: 24.sp,
                      color: Color(0xff09101D)),
                )),
              ),
              25.verticalSpace,
              Row(
                children: [
                  Container(
                    width: 44.w,
                    height: 20.h,
                    child: Text(
                      "Email",
                      style: GoogleFonts.sourceSansPro(
                        color: Color(0xff2C3A4B),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    margin: EdgeInsets.only(left: 60.r),
                  ),
                  Container(
                      height: 20.h,
                      width: 7.w,
                      margin: EdgeInsets.only(left: 1.r),
                      child: Text(
                        "*",
                        style: GoogleFonts.sourceSansPro(
                            fontWeight: FontWeight.w600,
                            fontSize: 15.sp,
                            color: Color(0xffDA1414).withOpacity(0.8)),
                      )),
                ],
              ),
              12.h.verticalSpace,
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40.r),
                height: 52.h,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: email,
                  onChanged: (a) {
                    isEmailEmpty = false;
                    isEmailIncorrect = false;
                    if(email.text.isNotEmpty && password.text.isNotEmpty && isRemember){
                      isDone = true;
                    } else {
                      isDone = false;
                    }
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    hintText: "Email or Phone Number",
                    filled: true,
                    fillColor: Color(0xffffffff),
                    hintStyle: GoogleFonts.sourceSansPro(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: Color(0xffDADEE3)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      borderSide: BorderSide(color: Color(0xffEBEEF2)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      borderSide: BorderSide(color: Color(0xffEBEEF2)),
                    ),
                  ),
                ),
              ),
              isEmailEmpty
                  ? Padding(
                padding: EdgeInsets.only(left: 50.r, top: 5.r),
                child: Text(
                  "Email or Phone Number is requirment",
                  style: TextStyle(color: Colors.red),
                ),
              )
                  : isEmailIncorrect
                      ? Padding(
                padding: EdgeInsets.only(left: 50.r, top: 5.r),
                child: Text(
                  "Email is incorrect",
                  style: TextStyle(color: Colors.red),
                ),
              )
                      : SizedBox.shrink(),
              20.verticalSpace,
              Row(
                children: [
                  Container(
                    width: 75.w,
                    height: 20.h,
                    child: Text(
                      "Password",
                      style: GoogleFonts.sourceSansPro(
                        color: Color(0xff2C3A4B),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    margin: EdgeInsets.only(left: 60.r),
                  ),
                  Container(
                      height: 20.h,
                      width: 7.w,
                      margin: EdgeInsets.only(left: 1.r),
                      child: Text(
                        "*",
                        style: GoogleFonts.sourceSansPro(
                            fontWeight: FontWeight.w600,
                            fontSize: 15.sp,
                            color: Color(0xffDA1414).withOpacity(0.8)),
                      )),
                ],
              ),
              12.h.verticalSpace,
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40.r),
                height: 52.h,
                child: TextFormField(
                  obscureText: isVisible,
                  obscuringCharacter: "*",
                  controller: password,
                  onChanged: (s) {
                    isPasswordEmpty = false;
                    isPasswordIncorrect = false;
                    if(email.text.isNotEmpty && password.text.isNotEmpty && isRemember){
                      isDone = true;
                    } else {
                      isDone = false;
                    }
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    hintText: "Password",
                    filled: true,
                    suffixIcon: Container(
                      margin: EdgeInsets.only(right: 12.r),
                      child: GestureDetector(
                        onTap: () {
                          isVisible = !isVisible;
                          setState(() {});
                        },
                        child: isVisible == false
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                      ),
                    ),
                    fillColor: Color(0xffffffff),
                    hintStyle: GoogleFonts.sourceSansPro(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xffDADEE3)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      borderSide: BorderSide(color: Color(0xffEBEEF2)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      borderSide: BorderSide(color: Color(0xffEBEEF2)),
                    ),
                  ),
                ),
              ),
              isPasswordEmpty
                  ? Padding(
                padding: EdgeInsets.only(left: 50.r, top: 5.r),
                child: Text(
                  "Password is requirment",
                  style: TextStyle(color: Colors.red),
                ),
              )
                  : isPasswordIncorrect
                      ? Padding(
                      padding: EdgeInsets.only(left: 50.r, top: 5.r),
                child: Text(
                  "Password is incorrect",
                  style: TextStyle(color: Colors.red),
                ),
              )
                      : isPasswordValidate
                          ? Padding(
                padding: EdgeInsets.only(left: 50.r, top: 5.r),
                child: Text(
                  "Password should have at least 8 character",
                  style: TextStyle(color: Colors.red),
                ),
              )
                          : SizedBox.shrink(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  isRemember == false
                      ? GestureDetector(
                          onTap: () {
                            isRemember = !isRemember;
                            if(email.text.isNotEmpty && password.text.isNotEmpty && isRemember){
                              isDone = true;
                            } else {
                              isDone = false;
                            }
                            setState(() {});

                          },
                          child: Container(
                            width: 16.w,
                            height: 16.h,
                            margin: EdgeInsets.only(left: 50.r, top: 25.r),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(4)),
                              border: Border.all(color: Color(0xffF43F5E)),
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            isRemember = !isRemember;
                            if(email.text.isNotEmpty && password.text.isNotEmpty && isRemember){
                              isDone = true;
                            } else {
                              isDone = false;
                            }
                            setState(() {});
                          },
                          child: Container(
                            width: 16.w,
                            height: 16.h,
                            margin: EdgeInsets.only(left: 50.r, top: 25.r),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(4)),
                              color: Color(0xffF43F5E),
                            ),
                            child: Center(
                                child: Icon(
                              Icons.check,
                              size: 15.sp,
                              color: Color(0xffffffff),
                            )),
                          ),
                        ),
                  Container(
                    margin: EdgeInsets.only(left: 10.r, top: 23.r),
                    child: Text(
                      "Remember me",
                      style: GoogleFonts.sourceSansPro(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                          fontSize: 15.sp,
                          color: Color(0xff2C3A4B)),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                 onTap: (){
                   if (email.text.isNotEmpty && password.text.isNotEmpty){
                     if(email.text != email_1){
                       isEmailIncorrect = true;
                       setState(() {});
                     }

                     if (password.text.length < 8){
                        isPasswordValidate = true;
                        setState(() {});
                     } else if (password.text != password_1){
                       isPasswordIncorrect = true;
                       setState(() {});
                     }

                     if (password.text == password_1 && email.text == email_1 && isRemember){
                       // isRemember = !isRemember;
                       Navigator.of(context).push(MaterialPageRoute(builder: (_)=>FillBio()));
                       setState(() {});
                     }
                   }
                   else if (email.text.isEmpty){
                      isEmailEmpty = true;
                      setState(() {});
                   } else {
                     isPasswordEmpty = true;
                     setState(() {});
                   }
                 },

                 child: Container(
                  width: 400.w,
                  height: 63.h,
                  margin: EdgeInsets.only(left: 22.r, right: 22.r, top: 20.r),
                  decoration: BoxDecoration(
                    color: isDone ? Color(0xffF43F5E) : Color(0xffF43F5E).withOpacity(0.5),
                    borderRadius: BorderRadius.all(Radius.circular(33)),
                  ),
                  child: Center(child: Text("Sign in", style: GoogleFonts.sourceSansPro(fontSize: 20.sp, fontWeight: FontWeight.w600, color: Colors.white),)),
              ),
               ),
              Container(
                width: 400.w,
                height: 30.h,
                margin: EdgeInsets.symmetric(horizontal: 30.r, vertical: 10.r),
                child: Center(
                    child: Text(
                  "Forgot the password?",
                  style: GoogleFonts.sourceSansPro(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: Color(0xffF43F5E)),
                )),
              ),
              Container(
                width: 400.w,
                height: 30.h,
                margin: EdgeInsets.symmetric(horizontal: 30.r, vertical: 10.r),
                child: Center(
                    child: Text(
                  "or continue with",
                  style: GoogleFonts.sourceSansPro(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: Color(0xff09101D)),
                )),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 180.w,
                    height: 62.h,
                    margin: EdgeInsets.only(left: 30.r, top: 15.r),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.white,
                      border: Border.all(color: Color(0xffF4F6F9)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                            spreadRadius: 0,
                            offset: Offset(-0, 1)),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 25.w,
                          height: 25.h,
                          child: Image.asset(
                            "assets/image/facebook.png",
                            fit: BoxFit.cover,
                          ),
                          margin: EdgeInsets.only(left: 30.r, right: 10.r),
                        ),
                        Center(
                            child: Text(
                          "Facebook",
                          style: GoogleFonts.sourceSansPro(
                              fontWeight: FontWeight.w600,
                              fontSize: 18.sp,
                              color: Color(0xff09101D)),
                        )),
                      ],
                    ),
                  ),
                  Container(
                    width: 180.w,
                    height: 62.h,
                    margin: EdgeInsets.only(left: 15.r, top: 15.r),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.white,
                      border: Border.all(
                        color: Color(0xffF4F6F9),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                            spreadRadius: 0,
                            offset: Offset(-0, 1)),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 25.w,
                          height: 25.h,
                          child: Image.asset(
                            "assets/image/google.png",
                            fit: BoxFit.cover,
                          ),
                          margin: EdgeInsets.only(left: 45.r, right: 10.r),
                        ),
                        Center(
                            child: Text(
                          "Google",
                          style: GoogleFonts.sourceSansPro(
                              fontWeight: FontWeight.w600,
                              fontSize: 18.sp,
                              color: Color(0xff09101D)),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 156.w,
                    height: 30.h,
                    margin: EdgeInsets.only(left: 110.r, top: 22.r),
                    child: Center(
                        child: Text(
                      "Don't have an account?",
                      style: GoogleFonts.sourceSansPro(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: Color(0xff858C94)),
                    )),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SignUp()));
                    },
                    child: Container(
                      width: 56.w,
                      height: 30.h,
                      margin: EdgeInsets.only(left: 3.r, top: 22.r),
                      child: Center(
                          child: Text(
                        "Sign up",
                        style: GoogleFonts.sourceSansPro(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: Color(0xffF43F5E)),
                      )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foode/Pages/Sign_in.dart';
import 'package:foode/Pages/uploadPhoto.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

  @override

  List listOfImage = [
    "assets/image/paypal.png",
    "assets/image/visa.png",
    "assets/image/payoneer.png"
  ];

  int index = -1;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  "Payment method",
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

          // 25.r.verticalSpace,
          SizedBox(
            height: 420.h,
            child: Padding(
              padding: EdgeInsets.only(left: 20.r, right: 20.r),
              child: ListView.builder(
                itemCount: listOfImage.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      if(this.index == index){
                        this.index = -1;
                      }else{
                        this.index = index;
                      }

                      setState(() {});
                    },
                    child: Container(
                      width: 380.w,
                      height: 90.h,
                      margin: EdgeInsets.only(bottom: 20.r),
                      decoration: BoxDecoration(
                          border: Border.all(color: this.index == index ? Color(0xffFB4A6C) : Color(0xffEBEEF2), width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              image: AssetImage(listOfImage[index])),
                          color: Color(0xffffffff),
                        boxShadow: [BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1,
                          offset: Offset(-0, 1)
                        )]
                      ),
                    ),
                  );
                }),
            ),
          ),
          195.h.verticalSpace,

          GestureDetector(
            onTap: (){
              if(index != -1){
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>UploadImageScreen()));
              }
            },
            child: Container(
              width: 400.w,
              height: 63.h,
              margin: EdgeInsets.only(left: 22.r, right: 22.r, top: 20.r),
              decoration: BoxDecoration(
                color: index != - 1 ? Color(0xffFB4A6C) : Color(0xffFB4A6C).withOpacity(0.6),
                borderRadius: BorderRadius.all(Radius.circular(33)),
              ),
              child: Center(child: Text("Next", style: GoogleFonts.sourceSansPro(fontSize: 20.sp, fontWeight: FontWeight.w600, color: Colors.white),)),
            ),
          ),
        ],
      ),
    );
  }
}

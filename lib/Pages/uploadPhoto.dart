import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/pages/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class UploadImageScreen extends StatefulWidget {
  const UploadImageScreen({Key? key}) : super(key: key);

  @override
  State<UploadImageScreen> createState() => _UploadImageScreenState();
}

class _UploadImageScreenState extends State<UploadImageScreen> {
  final ImagePicker _image = ImagePicker();
  String imagePath = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
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
                    margin: EdgeInsets.only(left: 0.r, top: 0.r),
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
                  margin: EdgeInsets.only(left: 12.r, top: 0.r),
                  child: Text(
                    "Upload your photo",
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
              margin: EdgeInsets.only(left: 20.r),
              child: Text(
                "This data will be displayed in your account profile for security",
                style: GoogleFonts.sourceSansPro(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: Color(0xff09101D),
                    height: 1.4),
              ),
            ),

            imagePath.isEmpty
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      32.verticalSpace,
                      GestureDetector(
                        onTap: () async {
                          _image
                              .pickImage(source: ImageSource.camera)
                              .then((value) async {
                            if (value != null) {
                              CroppedFile? cropperImage = await ImageCropper()
                                  .cropImage(sourcePath: value.path);
                              imagePath = cropperImage?.path ?? "";
                              setState(() {});
                            }
                          });
                          setState(() {});
                        },
                        child: Container(
                          height: 170.h,
                          width: 380.w,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.r)),
                                border: Border.all(color: Color(0xffEBEEF2),),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 1,
                                  offset: Offset(-0, 1),
                                )
                              ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 80.h,
                                width: 80.w,
                                margin: EdgeInsets.only(top: 22.r),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffF43F5E).withOpacity(0.1.r),
                                ),
                                child: IconButton(onPressed: () {}, icon: SvgPicture.asset("assets/svg/camera-svgrepo-com.svg", color: Color(0xffFF1843), width: 32.w, height: 32.h,),),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 15.r),
                                child: Text("Take photo", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w600, fontSize: 16.sp, color: Color(0xff09101D)),),
                              ),
                            ],
                          ),
                        ),
                      ),
                      24.verticalSpace,
                      GestureDetector(
                        onTap: () async {
                          _image
                              .pickImage(source: ImageSource.gallery)
                              .then((value) async {
                            if (value != null) {
                              CroppedFile? cropperImage = await ImageCropper()
                                  .cropImage(sourcePath: value.path);
                              imagePath = cropperImage?.path ?? "";
                              setState(() {});
                            }
                          });
                          setState(() {});
                        },
                        child: Container(
                            height: 170.h,
                            width: 380.w,
                            decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius:
                                BorderRadius.all(Radius.circular(20.r)),
                                border: Border.all(color: Color(0xffEBEEF2),),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 1,
                                    offset: Offset(-0, 1),
                                  )
                                ]
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 80.h,
                                  width: 80.w,
                                  margin: EdgeInsets.only(top: 22.r),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffF43F5E).withOpacity(0.1.r),
                                  ),
                                  child: IconButton(onPressed: () {}, icon: SvgPicture.asset("assets/svg/foldersvg.svg", color: Color(0xffFF1843), width: 32.w, height: 32.h,),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 15.r),
                                  child: Text("From gallery", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w600, fontSize: 16.sp, color: Color(0xff09101D)),),
                                ),
                              ],
                            ),
                          ),
                      ),
                    ],
                  )
                : SizedBox.shrink(),

            24.verticalSpace,
            imagePath.isEmpty
                ? SizedBox.shrink()
                : Stack(
                    children: [
                      Container(
                        width: 200.w,
                        height: 200.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: FileImage(
                                File(imagePath),
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text("Tanlang"),
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () async {
                                            _image
                                                .pickImage(
                                                    source: ImageSource.camera)
                                                .then((value) async {
                                              if (value != null) {
                                                CroppedFile? _cropperImage =
                                                    await ImageCropper()
                                                        .cropImage(
                                                            sourcePath:
                                                                value.path);
                                                if (_cropperImage != null) {
                                                  imagePath =
                                                      _cropperImage.path;
                                                  setState(() {});
                                                  Navigator.pop(context);
                                                }
                                              }
                                            });
                                          },
                                          child: Text("Take phote")),
                                      ElevatedButton(
                                          onPressed: () async {
                                            _image
                                                .pickImage(
                                                    source: ImageSource.gallery)
                                                .then((value) async {
                                              if (value != null) {
                                                CroppedFile? _cropperImage =
                                                    await ImageCropper()
                                                        .cropImage(
                                                            sourcePath:
                                                                value.path);
                                                if (_cropperImage != null) {
                                                  imagePath =
                                                      _cropperImage.path;
                                                  setState(() {});
                                                  Navigator.pop(context);
                                                }
                                              }
                                            });
                                          },
                                          child: Text("Take file")),
                                      ElevatedButton(
                                          onPressed: () async {
                                            imagePath = "";
                                            Navigator.pop(context);
                                            setState(() {});
                                          },
                                          child: Text("Delete")),
                                      ElevatedButton(
                                          onPressed: () async {
                                            Navigator.pop(context);
                                          },
                                          child: Text("Cancel")),
                                    ],
                                  );
                                });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              shape: BoxShape.circle,
                            ),
                            padding: EdgeInsets.all(8.r),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),

            Spacer(),
            InkWell(
              onTap: () {
                imagePath.isEmpty
                    ? null
                    : Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => SplashScreen()));
              },
              child: Container(
                width: double.infinity,
                height: 56.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100.r)),
                    color: imagePath.isEmpty
                        ? Colors.pinkAccent.withOpacity(0.5)
                        : Colors.pinkAccent),
                child: Center(child: Text("Next", style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w600, fontSize: 18, color: Color(0xffffffff), ),)),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

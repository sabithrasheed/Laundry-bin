import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:major_project/Screens/Uiscreens/bottomscreens/profile/faq.dart';
import 'package:major_project/core/const.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: blackColor,
                  ),
                ),
                SvgPicture.asset(
                    width: 152.w, height: 24.h, 'Assets/Group 1090.svg'),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    width: 28.w,
                    height: 28.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'Assets/profilecall.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: washinglistcolor,
              child: Column(
                children: [
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    'Aug 1, 2024',
                    style: GoogleFonts.dmSans(
                        fontSize: 14.sp,
                        color: blackColor,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 16.w,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: SvgPicture.asset(
                            width: 35.w,
                            height: 35.h,
                            'Assets/chatingleftimage.svg'),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Container(
                        width: 231.w,
                        height: 79.h,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(12.r),
                              bottomLeft: Radius.circular(12.r),
                              topRight: Radius.circular(12.r)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 14,
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Hi, I need to schedule a laundry\npickup for tomorrow.',
                                style: GoogleFonts.dmSans(
                                    fontSize: 14.sp,
                                    color: blackColor,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 176),
                                child: Text(
                                  '11:32 AM',
                                  style: GoogleFonts.dmSans(
                                      fontSize: 14.sp,
                                      color: locationtextColor,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 85),
                    child: Container(
                      width: 231.w,
                      height: 79.h,
                      decoration: BoxDecoration(
                        color: backgroundColorBlue,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(12.r),
                            bottomLeft: Radius.circular(12.r),
                            topLeft: Radius.circular(12.r)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 14,
                        ),
                        child: Column(
                          children: [
                            Text(
                              'We have availability tomorrow.\nWhat time works best for you',
                              style: GoogleFonts.dmSans(
                                  fontSize: 14.sp,
                                  color: whiteColor,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 170),
                              child: Text(
                                '11:33 AM',
                                style: GoogleFonts.dmSans(
                                    fontSize: 14.sp,
                                    color: whiteColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 16.w,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25),
                        child: SvgPicture.asset(
                            width: 35.w,
                            height: 35.h,
                            'Assets/chatingleftimage.svg'),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return FAQPage();
                          }));
                        },
                        child: Container(
                          width: 231.w,
                          height: 58.h,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(12.r),
                                bottomLeft: Radius.circular(12.r),
                                topRight: Radius.circular(12.r)),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                'Would 10 AM work for pickup?',
                                style: GoogleFonts.dmSans(
                                    fontSize: 14.sp,
                                    color: blackColor,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 120),
                                child: Text(
                                  '2 minutes ago',
                                  style: GoogleFonts.dmSans(
                                      fontSize: 14.sp,
                                      color: locationtextColor,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 255.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 7),
                          child: CircleAvatar(
                              backgroundColor: backgroundColorBlue,
                              child: Image.asset(
                                  width: 24.w,
                                  height: 24.h,
                                  'Assets/chatting_text.png')),
                        ),
                        fillColor: whiteColor,
                        filled: true,
                        hintText: 'Message...',
                        hintStyle: GoogleFonts.dmSans(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: textfiledtextcolor),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 18.h, horizontal: 10.w),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.r),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.r),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.r),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

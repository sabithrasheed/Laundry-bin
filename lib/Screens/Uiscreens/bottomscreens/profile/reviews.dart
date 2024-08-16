import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:major_project/core/const.dart';

class ReviewsWidget extends StatelessWidget {
  const ReviewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 35.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 12,
                    height: MediaQuery.of(context).size.height / 23,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("Assets/black_arrow_left.png"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 105.w,
                ),
                Text(
                  'My Reviews',
                  style: GoogleFonts.dmSans(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: blackColor,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 27.h,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: washinglistcolor,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 210),
                    child: Container(
                      width: 146.w,
                      height: 37.h,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'Assets/rating_calendar.png',
                            width: 20.w,
                            height: 20.h,
                          ),
                          Text(
                            'Jan - Mar',
                            style: GoogleFonts.dmSans(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: textcolor,
                            ),
                          ),
                          Icon(
                            Icons.expand_more,
                            size: 30,
                            color: textcolor,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    width: 349.w,
                    height: MediaQuery.of(context).size.height / 3.5,
                    color: Colors.white70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'Assets/review_rating.png',
                                width: 98.w,
                                height: 18.h,
                              ),
                              Text(
                                'Yesterday',
                                style: GoogleFonts.dmSans(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: blackColor),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Outstanding service at Laundrybin! Clothes\nreturn fresh, team is professional, and\npickup/delivery is convenient. Highly\nrecommend for top-notch laundry!',
                          style: GoogleFonts.dmSans(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: textcolor,
                          ),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 245),
                          child: Container(
                            width: 107.w,
                            height: 31.h,
                            decoration: BoxDecoration(
                                color: Colors.red.shade50,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                'Edit Review',
                                style: GoogleFonts.dmSans(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: editingreviewtext),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    width: 349.w,
                    height: MediaQuery.of(context).size.height / 3.5,
                    color: Colors.white70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'Assets/review_rating.png',
                                width: 98.w,
                                height: 18.h,
                              ),
                              Text(
                                'Wednesday',
                                style: GoogleFonts.dmSans(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: blackColor),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Outstanding service at Laundrybin! Clothes\nreturn fresh, team is professional, and\npickup/delivery is convenient. Highly\nrecommend for top-notch laundry!',
                          style: GoogleFonts.dmSans(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: textcolor,
                          ),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 245),
                          child: Container(
                            width: 107.w,
                            height: 31.h,
                            decoration: BoxDecoration(
                                color: Colors.red.shade50,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                'Edit Review',
                                style: GoogleFonts.dmSans(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: editingreviewtext),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    width: 349.w,
                    height: MediaQuery.of(context).size.height / 3.5,
                    color: Colors.white70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'Assets/review_rating.png',
                                width: 98.w,
                                height: 18.h,
                              ),
                              Text(
                                '12 Dec 2024',
                                style: GoogleFonts.dmSans(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: blackColor),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Outstanding service at Laundrybin! Clothes\nreturn fresh, team is professional, and\npickup/delivery is convenient. Highly\nrecommend for top-notch laundry!',
                          style: GoogleFonts.dmSans(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: textcolor,
                          ),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 245),
                          child: Container(
                            width: 107.w,
                            height: 31.h,
                            decoration: BoxDecoration(
                                color: Colors.red.shade50,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                'Edit Review',
                                style: GoogleFonts.dmSans(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: editingreviewtext),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

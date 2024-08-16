import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:major_project/core/const.dart';

class ReviewsWidgetTwo extends StatelessWidget {
  const ReviewsWidgetTwo({super.key});

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
                          Row(
                            children: [
                              Text(
                                '4',
                                style: GoogleFonts.dmSans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: textcolor,
                                ),
                              ),
                              Icon(
                                Icons.star,
                                color: textcolor,
                              ),
                            ],
                          ),
                          Text(
                            'and above',
                            style: GoogleFonts.dmSans(color: textcolor),
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
                  _buildReviewCard(context, 'Angelina', 'Yesterday',
                      'Outstanding service at Laundrybin! Clothes return fresh, team is professional, and pickup/delivery is convenient. Highly recommend for top-notch laundry!'),
                  SizedBox(
                    height: 12.h,
                  ),
                  _buildReviewCard(context, 'Samuel', 'Wednesday',
                      'Outstanding service at Laundrybin! Clothes return fresh, team is professional, and pickup/delivery is convenient. Highly recommend for top-notch laundry!'),
                  SizedBox(
                    height: 12.h,
                  ),
                  _buildReviewCard(context, 'Gareth Bale', '12 Mar 2024',
                      'Outstanding service at Laundrybin! Clothes return fresh, team is professional, and pickup/delivery is convenient. Highly recommend for top-notch laundry!'),
                  SizedBox(
                    height: 12.h,
                  ),
                  _buildReviewCard(context, 'Sebastian', '12 Mar',
                      'Outstanding service at Laundrybin! Clothes return fresh, team is professional, and pickup/delivery is convenient. Highly recommend for top-notch laundry!'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReviewCard(
      BuildContext context, String name, String date, String review) {
    return Container(
      width: 349.w,
      color: Colors.white70,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage('Assets/reviews_firstimage.png'),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: GoogleFonts.dmSans(
                            color: blackColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          date,
                          style: GoogleFonts.dmSans(
                            color: blackColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Image.asset(
                  'Assets/review_rating.png',
                  width: 98.w,
                  height: 18.h,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            review,
            style: GoogleFonts.dmSans(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: textcolor,
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}

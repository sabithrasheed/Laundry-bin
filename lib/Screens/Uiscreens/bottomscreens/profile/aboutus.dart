import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:major_project/core/const.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25.h,
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
                  width: 110.w,
                ),
                Text(
                  'About Us',
                  style: GoogleFonts.dmSans(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: blackColor,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 45.h,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 125),
              child: SvgPicture.asset('Assets/Group 1090.svg'),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "At Laundrybin, we are passionate about providing\ntop-quality laundry services tailored to meet the\nunique needs of our customers. With years of\nexperience in the industry, our dedicated team is\ncommitted to delivering impeccable results and\nexceptional customer service. From wash, dry,\nand fold services to specialized treatments for\ndelicate fabrics, we handle each garment with the\nutmost care and attention to detail. Our state-of-\nthe-art equipment and eco-friendly practices\nensure that your laundry is not only clean but also\nhandled responsibly. Conveniently located in the\nheart of [Location], we strive to make the laundry\nprocess hassle-free and efficient for everyone.\nTrust us with your laundry needs, and experience\nthe difference here. we understand that\nconvenience is key in today's fast-paced world.\nThat's why we offer convenient pickup and\ndelivery services, ensuring that your laundry\nexperience fits seamlessly into your busy\nschedule. Our friendly and professional staff are\nhere to assist you every step of the way, whether\nyou have special requests or simply need advice\non garment care. As a locally owned and operated\nbusiness, we take pride in serving our community\nwith integrity and reliability. Discover the ease\nand satisfaction of outsourcing your laundry to\n[Laundry Shop Name], where quality meets\nconvenience.",
              style: GoogleFonts.dmSans(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

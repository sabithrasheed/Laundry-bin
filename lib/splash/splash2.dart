import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:major_project/Screens/widgets/first_login.dart';
import 'package:major_project/core/const.dart';

class SPlashSecond extends StatelessWidget {
  const SPlashSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorBlue,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 58.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return FirstLogin();
                    }));
                  },
                  child: Text('Skip',
                      style: GoogleFonts.dmSans(
                          color: whiteColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5)),
                ),
                SizedBox(
                  width: 27.w,
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 32.w,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.28,
                  height: MediaQuery.of(context).size.height / 3.1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: Svg('Assets/Group 1139.svg'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 54.h,
            ),
            Text(
              'Get your Laundry and\nDry cleaning in 24hours',
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w700,
                fontSize: 24.sp,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'A convenient laundry solution that\nhelps protect the enviornment',
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 162.w,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 14,
                  height: MediaQuery.of(context).size.height / 80,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  width: 8.w,
                ),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: splashcircle,
                ),
                SizedBox(
                  width: 8.w,
                ),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: splashcircle,
                ),
              ],
            ),
            SizedBox(
              height: 28.h,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1,
              height: 231.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('Assets/image 2.png'))),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:major_project/Screens/widgets/background.dart';

import 'package:major_project/Screens/widgets/login.dart';

import 'package:major_project/core/const.dart';

class PasswordChangeWidget extends StatelessWidget {
  const PasswordChangeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundImageContainer(),
          Positioned(
            top: 50,
            left: 24,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();                         
                  },
                ));
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 10,
                height: MediaQuery.of(context).size.height / 22,
                child: SvgPicture.asset(
                  "Assets/arrow-left.svg",
                ),
              ),
            ),
          ),
          Positioned(
            top: 228,
            left: 140,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: SvgPicture.asset('Assets/Successmark.svg'),
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
          Positioned(
            top: 370,
            left: 58,
            child: Text(
              "Password Changed",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                  fontSize: 26.sp, fontWeight: FontWeight.w700),
            ),
          ),
          Positioned(
            top: 415,
            left: 86,
            child: Text(
              'Your password has been\n changed successfully.',
              style: GoogleFonts.dmSans(
                  fontSize: 16.sp, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: 500,
            left: 24,
            right: 24,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return  LoginScreen();
                }));
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: whiteColor),
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(140.r)),
                width: MediaQuery.of(context).size.width / 1.1,
                height: MediaQuery.of(context).size.height / 14,
                child: Center(
                  child: Text(
                    "Back To Login",
                    style: GoogleFonts.dmSans(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: backgroundColorBlue),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 800,
            left: 20,
            child: Row(
              children: [
                SizedBox(
                  width: 57.w,
                ),
                Text(
                  "Didn’t receive code?",
                  style: GoogleFonts.dmSans(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      color: whiteColor),
                ),
                SizedBox(
                  width: 5.w,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return  LoginScreen();
                      },
                    ));
                  },
                  child: Text(
                    "Resend",
                    style: GoogleFonts.dmSans(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: whiteColor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

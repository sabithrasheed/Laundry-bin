import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:major_project/Screens/widgets/background.dart';
import 'package:major_project/Screens/widgets/forgot.dart';
import 'package:major_project/Screens/widgets/login.dart';
import 'package:major_project/Screens/widgets/password_change.dart';
import 'package:major_project/core/const.dart';

class NewPasswordWidget extends StatelessWidget {
  const NewPasswordWidget({super.key});

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
                    return const ForgotWidget();
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
            left: 34,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create New Password ",
                  style: GoogleFonts.dmSans(
                      fontSize: 26.sp, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
          Positioned(
            top: 295,
            left: 27,
            child: Text(
              "Your new password must be unique from\n those previously used.",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                  fontSize: 16.sp, fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
            top: 390,
            left: 24,
            right: 24,
            child: Column(
              children: [
                TextFormField(
                  style: TextStyle(color: blackColor),
                  decoration: InputDecoration(
                    fillColor: whiteColor,
                    filled: true,
                    hintText: 'Enter your email or Phone number',
                    hintStyle: GoogleFonts.dmSans(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: texthintcolor),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: whiteColor, width: 2),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                TextFormField(
                  style: TextStyle(color: blackColor),
                  decoration: InputDecoration(
                    fillColor: whiteColor,
                    filled: true,
                    hintText: 'Enter your email or Phone number',
                    hintStyle: GoogleFonts.dmSans(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: texthintcolor),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: whiteColor, width: 2),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 550,
            left: 24,
            right: 24,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PasswordChangeWidget();
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
                    "Reset Password",
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
                        return LoginScreen();
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

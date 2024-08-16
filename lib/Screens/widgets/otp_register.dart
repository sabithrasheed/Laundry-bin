import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:major_project/Screens/widgets/background.dart';
import 'package:major_project/Screens/widgets/forgot.dart';
import 'package:major_project/Screens/widgets/login.dart';
import 'package:major_project/Screens/widgets/new_password.dart';
import 'package:major_project/core/const.dart';
import 'package:pinput/pinput.dart';

class OtpRegistration extends StatelessWidget {
  const OtpRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImageContainer(),
          Positioned(
            top: 50,
            left: 24,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ForgotWidget();
                  },
                ));
              },
              child: Container(
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
            left: 20,
            child: Column(
              children: [
                Text(
                  "OTP Verification",
                  style: GoogleFonts.dmSans(
                      fontSize: 26.sp, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "Enter the verification code we just sent on\nyour email address.",
                  style: GoogleFonts.dmSans(
                      fontSize: 16.sp, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Center(
            child: Pinput(),
          ),
          Positioned(
            top: 490,
            left: 24,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NewPasswordWidget();
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
                    "Verify",
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
            top: 820,
            left: 20,
            child: Row(
              children: [
                SizedBox(
                  width: 57.w,
                ),
                Text(
                  "Didn’t received code?",
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

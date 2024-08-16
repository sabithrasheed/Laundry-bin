import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:major_project/Screens/widgets/background.dart';
import 'package:major_project/Screens/widgets/login.dart';

import 'package:major_project/Screens/widgets/otp_register.dart';

import 'package:major_project/core/const.dart';

class ForgotWidget extends StatelessWidget {
  const ForgotWidget({super.key});

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
            top: MediaQuery.of(context).size.height / 5,
            left: MediaQuery.of(context).size.width / 6.2,
            child: Text(
              'Forgot Password?',
              style: GoogleFonts.dmSans(
                fontSize: 26.sp,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 3.5,
            left: MediaQuery.of(context).size.width / 16,
            child: Text(
              "Don't worry! It occurs. Please enter the\n email or phone number linked with your\n account",
              style: GoogleFonts.dmSans(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 3.5,
            left: MediaQuery.of(context).size.width / 10,
            right: MediaQuery.of(context).size.width / 10,
            child: SingleChildScrollView(
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
                        color: texthintcolor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: whiteColor, width: 2),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  SizedBox(
                    width: 290.w,
                    height: 48.h,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(whiteColor),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return OtpRegistration();
                        }));
                      },
                      child: Text(
                        'Send OTP',
                        style: GoogleFonts.dmSans(
                          fontSize: 16.sp,
                          color: elevbuttcolor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 90.h,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 770,
            left: 72,
            child: Row(
              children: [
                Text(
                  'Remember Password ? ',
                  style: GoogleFonts.dmSans(
                    color: whiteColor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }));
                  },
                  child: Text(
                    'Log in',
                    style: GoogleFonts.dmSans(
                      color: whiteColor,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
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

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:major_project/Screens/Uiscreens/bottomscreens/bottom_nav.dart';

import 'package:major_project/Screens/widgets/background.dart';
import 'package:major_project/Screens/widgets/login.dart';

import 'package:major_project/core/const.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String? otp;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final width = mediaQuery.size.width;
    final height = mediaQuery.size.height;
    final TextEditingController _pinController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              child: Container(
                width: MediaQuery.of(context).size.width / 11,
                height: MediaQuery.of(context).size.height / 20,
                child: SvgPicture.asset(
                  "Assets/arrow-left.svg",
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 5,
            left: MediaQuery.of(context).size.width / 4,
            child: Text(
              'We Have Sent\n You An OTP',
              style: GoogleFonts.dmSans(
                fontSize: 26.sp,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 3,
            left: MediaQuery.of(context).size.width / 4,
            child: Pinput(
            
              length: 4,
              defaultPinTheme: PinTheme(
                width: width * 0.1,
                height: height * 0.06,
                textStyle: TextStyle(
                  fontSize: width * 0.06,
                  color: blackColor,
                ),
                decoration: BoxDecoration(
                  color: whiteColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(width * 0.012),
                ),
              ),
              focusedPinTheme: PinTheme(
                width: width * 0.1,
                height: height * 0.06,
                textStyle: TextStyle(
                  fontSize: width * 0.06,
                  color: blackColor,
                ),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(width * 0.012),
                ),
              ),
              submittedPinTheme: PinTheme(
                width: width * 0.1,
                height: height * 0.06,
                textStyle: TextStyle(
                  fontSize: width * 0.06,
                  color: blackColor,
                ),
                decoration: BoxDecoration(
                  color: whiteColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(width * 0.012),
                ),
              ),
              showCursor: true,
              onCompleted: (pin) {
                otp = pin;
              },
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Positioned(
            top: 360,
            left: 80,
            child: Row(
              children: [Text("Don’t receive OTP? "), Text("RESEND OTP ")],
            ),
          ),
          Positioned(
            top: 720,
            left: 32,
            child: SizedBox(
              width: 290.w,
              height: 48.h,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(whiteColor)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return BottomWidget();
                    }));
                  },
                  child: Text(
                    'Next',
                    style: GoogleFonts.dmSans(
                        fontSize: 16.sp,
                        color: elevbuttcolor,
                        fontWeight: FontWeight.w700),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

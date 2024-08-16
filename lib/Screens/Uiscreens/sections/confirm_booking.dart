import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:major_project/Screens/Uiscreens/bottomscreens/bottom_nav.dart';
import 'package:major_project/core/const.dart';

class ConfirmBooking extends StatelessWidget {
  const ConfirmBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorBlue,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 160.h,
            ),
            Container(
              width: 253.w,
              height: 226.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('Assets/confirm_booking.png'))),
            ),
            SizedBox(
              height: 43.h,
            ),
            Text(
              'Your Booking is\n Confirmed',
              style: GoogleFonts.dmSans(
                  fontSize: 34.sp,
                  fontWeight: FontWeight.w700,
                  color: whiteColor),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 166.h,
            ),
            Center(
              child: SizedBox(
                width: 333.w,
                height: 64.h,
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
                    'Back To Home',
                    style: GoogleFonts.dmSans(
                      color: backgroundColorBlue,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h), // Add some padding at the bottom
          ],
        ),
      ),
    );
  }
}

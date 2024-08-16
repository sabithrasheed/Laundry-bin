import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:major_project/core/const.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
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
                  width: 100.w,
                ),
                Text(
                  'Privacy policy',
                  style: GoogleFonts.dmSans(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: blackColor,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 41.h,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 65),
              child: Text(
                'Data Privacy and Protection',
                style: GoogleFonts.dmSans(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: blackColor,
                ),
              ),
            ),
            SizedBox(
              height: 13.h,
            ),
            Text(
              'At Laundrybin, we take your privacy seriously and\nare committed to protecting your personal\ninformation. Any data collected, such as your\nname, contact details, and laundry preferences, is\nused solely for the purpose of providing our\nlaundry services and improving your customer\nexperience. We do not share your information\nwith third parties unless required by law or with\nyour explicit consent. Our website may use\ncookies to enhance your browsing experience,\nbut these do not collect personally identifiable\ninformation. We employ industry-standard\nsecurity measures to safeguard your data against\nunauthorized access, alteration, or disclosure. By\nusing our services, you consent to the collection\nand use of your information as outlined in this\nprivacy policy.',
              style: GoogleFonts.dmSans(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: privacytextcolor),
            ),
            SizedBox(
              height: 31.h,
            ),
            Text(
              'Information Collection and Usage',
              style: GoogleFonts.dmSans(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: blackColor,
              ),
            ),
            SizedBox(
              height: 13.h,
            ),
            Text(
              'At [Laundry Shop Name], we collect personal\ninformation from you when you use our services\nor interact with our website. This information may\ninclude your name, contact details, payment\ninformation, and preferences. We use this\ninformation to provide and improve our laundry\nservices, personalize your experience, and\ncommunicate with you about your orders. Rest\nassured, we never sell or share your information\nwith third parties for marketing purposes without\nyour consent. Your privacy and security are our\ntop priorities.',
              style: GoogleFonts.dmSans(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: privacytextcolor),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:major_project/Screens/Uiscreens/sections/credit_.dart';
import 'package:major_project/Screens/Uiscreens/sections/upi.dart';
import 'package:major_project/Screens/widgets/payment.dart';
import 'package:major_project/core/const.dart';

class OffersWidget extends StatefulWidget {
  const OffersWidget({super.key});

  @override
  State<OffersWidget> createState() => _ScreenOfferPageState();
}

class _ScreenOfferPageState extends State<OffersWidget> {
  bool check1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width / 16),
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
                SizedBox(width: MediaQuery.of(context).size.width / 4),
                Text(
                  "Offers",
                  style: GoogleFonts.dmSans(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: gridColor,
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3.6,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            SizedBox(width: 20.w),
                            Text(
                              "Free delivery on every order for \n6 months",
                              style: GoogleFonts.dmSans(
                                fontSize: 14.sp,
                                color: gridColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.h),
                        Row(
                          children: [
                            SizedBox(width: 20.w),
                            Text(
                              "₹499",
                              style: GoogleFonts.dmSans(
                                fontSize: 21.7.sp,
                                color: textcolor,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 1.7,
                            ),
                            Checkbox(
                              activeColor: backgroundColorBlue,
                              value: check1,
                              onChanged: (bool? value) {
                                setState(() {
                                  check1 = value!;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    "Payment method",
                    style: GoogleFonts.dmSans(
                        color: blackColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 900,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  SizedBox(height: MediaQuery.of(context).size.height / 40),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CreditScreen();
                      }));
                    },
                    child: PaymentOption(
                      image: 'Assets/card.png',
                      label: "Credit Card",
                      color: creditcolor.withOpacity(0.2),
                      textColor: blackColor,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 40),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return UpiScreen();
                      }));
                    },
                    child: PaymentOption(
                      image: 'Assets/upi.png',
                      label: "UPI",
                      color: upiColor.withOpacity(0.2),
                      textColor: blackColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:major_project/Screens/Uiscreens/sections/confirm_booking.dart';
import 'package:major_project/core/const.dart';

class PickUpScreen extends StatefulWidget {
  const PickUpScreen({super.key});

  @override
  _PickUpScreenState createState() => _PickUpScreenState();
}

class _PickUpScreenState extends State<PickUpScreen> {
  String selectedButton = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('Assets/background_location.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('Assets/location_arrow.png'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    width: 131.w,
                    height: 44.h,
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(35)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 22.w,
                          height: 22.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'Assets/location_editing.png'))),
                        ),
                        Text(
                          'Edit on Map',
                          style: GoogleFonts.dmSans(
                              fontSize: 14.sp,
                              color: backgroundColorBlue,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 54.h,
              child: Padding(
                padding: const EdgeInsets.only(left: 28, right: 24),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Icon(
                      Icons.search,
                      size: 35,
                    ),
                    hintText: 'Search for your location',
                    hintStyle: GoogleFonts.dmSans(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: whiteColor,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 159.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.1,
                height: MediaQuery.of(context).size.height / 11.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: whiteColor),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    '319 Cross, between Hufuf and, Al\n Khob...',
                    style: GoogleFonts.dmSans(
                        fontSize: 14.sp,
                        color: blackColor,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 180),
              child: Container(
                width: 31.64.w,
                height: 53.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('Assets/location_image.png'))),
              ),
            ),
            SizedBox(
              height: 150.h,
            ),
            Center(
              child: Text(
                'Move the pin to adjust',
                style: GoogleFonts.dmSans(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: blackColor),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: SizedBox(
                width: 333.w,
                height: 64.h,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      backgroundColorBlue,
                    ),
                  ),
                  onPressed: () {
                    _showBottomSheet(context);
                  },
                  child: Text(
                    'Confirm',
                    style: GoogleFonts.dmSans(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          width: 28.w,
                          height: 28.h,
                          'Assets/location_bottom_sheet.png',
                        ),
                        SizedBox(
                          width: 14.w,
                        ),
                        Text(
                          'Dammam',
                          style: GoogleFonts.dmSans(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w700,
                              color: blackColor),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      children: [
                        Image.asset(
                          width: 20.w,
                          height: 20.h,
                          'Assets/sheet_textfield_one.png',
                        ),
                        SizedBox(width: 8.w),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Apartment/ building/ flat name',
                              hintStyle: GoogleFonts.dmSans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: locationtextColor),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 12),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: locationtextColor,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 32.h),
                    Row(
                      children: [
                        Image.asset(
                          width: 20.w,
                          height: 20.h,
                          'Assets/bottom_text_filed2.png',
                        ),
                        SizedBox(width: 8.w),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Floor number',
                              hintStyle: GoogleFonts.dmSans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: locationtextColor),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 12),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: locationtextColor,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 32.h),
                    Row(
                      children: [
                        Image.asset(
                          width: 20.w,
                          height: 20.h,
                          'Assets/bottom_textfiled_three.png',
                        ),
                        SizedBox(width: 8.w),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter your Phonenumber',
                              hintStyle: GoogleFonts.dmSans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: locationtextColor),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 12),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: locationtextColor,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 32.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Save For',
                          style: GoogleFonts.dmSans(
                            color: bottomcustomcolor,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        CustomButton(
                          label: 'Home',
                          selected: selectedButton == 'Home',
                          onPressed: () {
                            setState(() {
                              selectedButton = 'Home';
                            });
                          },
                        ),
                        CustomButton(
                          label: 'Work',
                          selected: selectedButton == 'Work',
                          onPressed: () {
                            setState(() {
                              selectedButton = 'Work';
                            });
                          },
                        ),
                        CustomButton(
                          label: 'Other',
                          selected: selectedButton == 'Other',
                          onPressed: () {
                            setState(() {
                              selectedButton = 'Other';
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Center(
                      child: SizedBox(
                        width: 333.w,
                        height: 64.h,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(elevbuttcolor)),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ConfirmBooking();
                            }));
                          },
                          child: Text(
                            'Save',
                            style: GoogleFonts.dmSans(
                              color: whiteColor,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool selected;

  const CustomButton({
    required this.label,
    required this.onPressed,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        backgroundColor: selected ? Colors.blue : Colors.white,
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: GoogleFonts.dmSans(
          color: Colors.black,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

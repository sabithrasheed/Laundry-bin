import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:major_project/Screens/Uiscreens/sections/instructions.dart';
import 'package:major_project/core/const.dart';

class WashingScreen extends StatefulWidget {
  const WashingScreen({super.key});

  @override
  State<WashingScreen> createState() => _WashingScreenState();
}

class _WashingScreenState extends State<WashingScreen> {
  List<Map<String, dynamic>> newmap = [
    {
      'image': 'Assets/washing_list1.svg',
      'name': 'Shirt',
      'price': 20,
    },
    {
      'image': 'Assets/washing_list2.svg',
      'name': 'T-shirt',
      'price': 20,
    },
    {
      'image': 'Assets/washing_list3.svg',
      'name': 'Short',
      'price': 10,
    },
    {
      'image': 'Assets/washing_list4.svg',
      'name': 'Skirt',
      'price': 20,
    },
    {
      'image': 'Assets/washing_lsit5.svg',
      'name': 'Jacket',
      'price': 40,
    },
    {
      'image': 'Assets/washing_list_6.svg',
      'name': 'Jeans',
      'price': 40,
    },
    {
      'image': 'Assets/washing_lsit7.svg',
      'name': 'Hoodie',
      'price': 40,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.8,
              decoration: BoxDecoration(
                color: washinginterface,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 15.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 10,
                            height: MediaQuery.of(context).size.height / 22,
                            child: SvgPicture.asset(
                              "Assets/arrow-left.svg",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Washing',
                          style: GoogleFonts.dmSans(
                            color: blackColor,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('Assets/Group 1082.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.5,
              child: Column(
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        final item = newmap[index];
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                              height: MediaQuery.of(context).size.height / 22,
                              child: SvgPicture.asset(
                                item['image'],
                              ),
                            ),
                            Text(
                              item['name'],
                              style: GoogleFonts.dmSans(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: gridColor,
                              ),
                            ),
                            Text(
                              '₹${item['price']}',
                              style: GoogleFonts.dmSans(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: gridColor,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: washinglistcolor,
                                borderRadius: BorderRadius.circular(50.r),
                              ),
                              width: 112.w,
                              height: 38.h,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: whiteColor,
                                    radius: 20,
                                    child: Center(
                                      child: Icon(
                                        Icons.remove,
                                        color: backgroundColorBlue,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 55,
                                  ),
                                  Text(
                                    "02",
                                    style: GoogleFonts.dmSans(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      color: gridColor,
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 55,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: whiteColor,
                                    radius: 20,
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        color: backgroundColorBlue,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 14.h,
                        );
                      },
                      itemCount: newmap.length,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    child: SizedBox(
                      width: 333.w,
                      height: 64.h,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: backgroundColorBlue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(140.r),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return InstructionsPage();
                          }));
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '₹110',
                                    style: GoogleFonts.dmSans(
                                      color: whiteColor,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    '8 Items',
                                    style: GoogleFonts.dmSans(
                                      color: whiteColor,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Proceed',
                                    style: GoogleFonts.dmSans(
                                      color: whiteColor,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    size: 30,
                                    color: whiteColor,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
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

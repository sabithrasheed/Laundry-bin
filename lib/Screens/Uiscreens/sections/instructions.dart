import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:major_project/Screens/Uiscreens/sections/summary.dart';
import 'package:major_project/core/const.dart';

class InstructionsPage extends StatefulWidget {
  const InstructionsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InstructionsPageState createState() => _InstructionsPageState();
}

class _InstructionsPageState extends State<InstructionsPage> {
  bool isHotSelected = false;
  bool isColdSelected = true;
  bool isYesSelected = false;
  bool isNoSelected = true;
  bool isScentedSelected = false;
  bool isNormalSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
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
                  const Spacer(),
                  Text(
                    'Instructions',
                    style: GoogleFonts.dmSans(
                      color: blackColor,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 295),
                  child: Text(
                    'Water',
                    style: GoogleFonts.dmSans(
                      color: blackColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  width: 333.w,
                  height: 54.h,
                  color: whiteColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isHotSelected = true;
                            isColdSelected = false;
                          });
                        },
                        child: Container(
                          width: 158.w,
                          height: 54.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: isHotSelected
                                  ? backgroundColorBlue
                                  : whiteColor,
                            ),
                            borderRadius: BorderRadius.circular(44),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                backgroundColor: isHotSelected
                                    ? backgroundColorBlue
                                    : Colors.grey.shade300,
                                radius: 24.r,
                                child: CircleAvatar(
                                  backgroundColor: isHotSelected
                                      ? backgroundColorBlue
                                      : Colors.grey.shade300,
                                  backgroundImage:
                                      const AssetImage('Assets/toggle_hot.png'),
                                ),
                              ),
                              Text('Hot',
                                  style: GoogleFonts.dmSans(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                      color: blackColor))
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isHotSelected = false;
                            isColdSelected = true;
                          });
                        },
                        child: Container(
                          width: 158.w,
                          height: 54.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: isColdSelected
                                  ? backgroundColorBlue
                                  : whiteColor,
                            ),
                            borderRadius: BorderRadius.circular(44),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                radius: 24.r,
                                backgroundColor: isColdSelected
                                    ? backgroundColorBlue
                                    : Colors.grey.shade300,
                                child: CircleAvatar(
                                  backgroundColor: isColdSelected
                                      ? backgroundColorBlue
                                      : Colors.grey.shade300,
                                  backgroundImage: const AssetImage(
                                      'Assets/toggle_cold.png'),
                                ),
                              ),
                              Text(
                                'Cold',
                                style: GoogleFonts.dmSans(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                    color: blackColor),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 205),
                  child: Text(
                    'Fabric Softener',
                    style: GoogleFonts.dmSans(
                      color: blackColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  width: 333.w,
                  height: 54.h,
                  color: whiteColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isYesSelected = true;
                            isNoSelected = false;
                          });
                        },
                        child: Container(
                          width: 158.w,
                          height: 54.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: isYesSelected
                                  ? backgroundColorBlue
                                  : whiteColor,
                            ),
                            borderRadius: BorderRadius.circular(44),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                radius: 24.r,
                                backgroundColor: isYesSelected
                                    ? backgroundColorBlue
                                    : Colors.grey.shade300,
                                child: CircleAvatar(
                                  backgroundColor: isYesSelected
                                      ? backgroundColorBlue
                                      : Colors.grey.shade300,
                                  backgroundImage: const AssetImage(
                                      'Assets/tick-circle.png'),
                                ),
                              ),
                              Text('Yes',
                                  style: GoogleFonts.dmSans(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                      color: blackColor))
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isYesSelected = false;
                            isNoSelected = true;
                          });
                        },
                        child: Container(
                          width: 158.w,
                          height: 54.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: isNoSelected
                                  ? backgroundColorBlue
                                  : whiteColor,
                            ),
                            borderRadius: BorderRadius.circular(44),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                radius: 24.r,
                                backgroundColor: isNoSelected
                                    ? backgroundColorBlue
                                    : Colors.grey.shade300,
                                child: CircleAvatar(
                                  backgroundColor: isNoSelected
                                      ? backgroundColorBlue
                                      : Colors.grey.shade300,
                                  backgroundImage: const AssetImage(
                                      'Assets/close-circle.png'),
                                ),
                              ),
                              Text(
                                'No',
                                style: GoogleFonts.dmSans(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                    color: blackColor),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 248),
                  child: Text(
                    'Detergent',
                    style: GoogleFonts.dmSans(
                      color: blackColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  width: 333.w,
                  height: 54.h,
                  color: whiteColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isScentedSelected = true;
                            isNormalSelected = false;
                          });
                        },
                        child: Container(
                          width: 158.w,
                          height: 54.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: isScentedSelected
                                  ? backgroundColorBlue
                                  : whiteColor,
                            ),
                            borderRadius: BorderRadius.circular(44),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                radius: 24.r,
                                backgroundColor: isScentedSelected
                                    ? backgroundColorBlue
                                    : Colors.grey.shade300,
                                child: CircleAvatar(
                                  backgroundColor: isScentedSelected
                                      ? backgroundColorBlue
                                      : Colors.grey.shade300,
                                  backgroundImage:
                                      const AssetImage('Assets/scented.png'),
                                ),
                              ),
                              Text('Scented',
                                  style: GoogleFonts.dmSans(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                      color: blackColor))
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isScentedSelected = false;
                            isNormalSelected = true;
                          });
                        },
                        child: Container(
                          width: 158.w,
                          height: 54.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: isNormalSelected
                                  ? backgroundColorBlue
                                  : whiteColor,
                            ),
                            borderRadius: BorderRadius.circular(44),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                radius: 24.r,
                                backgroundColor: isNormalSelected
                                    ? backgroundColorBlue
                                    : Colors.grey.shade300,
                                child: CircleAvatar(
                                  backgroundColor: isNormalSelected
                                      ? backgroundColorBlue
                                      : Colors.grey.shade300,
                                  backgroundImage:
                                      AssetImage('Assets/wind-2.png'),
                                ),
                              ),
                              Text(
                                'Normal',
                                style: GoogleFonts.dmSans(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                    color: blackColor),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    style: TextStyle(color: blackColor),
                    decoration: InputDecoration(
                      hintText: 'Enter notes here',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    maxLines: 6,
                  ),
                ),
                SizedBox(
                  height: 43.h,
                ),
                SizedBox(
                    height: 64.h,
                    width: 333.w,
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(backgroundColorBlue)),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return ScreenSummary();
                            },
                          ));
                        },
                        child: Text('Next'))),
                SizedBox(
                  height: 20.h,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

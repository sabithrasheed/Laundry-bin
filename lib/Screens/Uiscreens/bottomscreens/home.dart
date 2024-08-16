import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:major_project/Screens/Uiscreens/sections/washig.dart';
import 'package:major_project/core/const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarouselController _controller = CarouselController();
  int _currentvalue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 150.h,
                child: Row(
                  children: [
                    SizedBox(
                      width: 26.w,
                    ),
                    Text(
                      'Hello\nJohn Doe',
                      style: GoogleFonts.dmSans(
                        fontSize: 34.sp,
                        fontWeight: FontWeight.w700,
                        color: blackColor,
                      ),
                    ),
                    Container(
                      width: 138.w,
                      height: 249.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: Svg('Assets/backgrounimage.svg'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    width: 15.w,
                    height: 15.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: Svg('Assets/house.svg'),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    'Westhills, Calicut',
                    style: GoogleFonts.dmSans(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: textcolor,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: backgroundColorBlue,
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 328 / 130,
                  viewportFraction: 1.0,
                  autoPlay: true,
                  initialPage: 1,
                  height: 139.0,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentvalue = index;
                    });
                  },
                ),
                items: [1, 2, 3].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: 328.w,
                        height: 139.h,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('Assets/image 1 (1).png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
                carouselController: _controller,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [1, 2, 3].asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 8.0,
                      height: 8.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        shape: BoxShape.circle,
                        color: _currentvalue == entry.key
                            ? backgroundColorBlue
                            : whiteColor,
                      ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  SizedBox(
                    width: 34.w,
                  ),
                  Container(
                    width: 19.w,
                    height: 19.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: Svg("Assets/fi_16260.svg"))),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "Offers",
                    style: GoogleFonts.dmSans(
                        fontSize: 16.sp,
                        color: backgroundColorBlue,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 100.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
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
                              SizedBox(
                                width: 20.w,
                              ),
                              Text(
                                "Free delivery on every orders for \n6 months",
                                style: GoogleFonts.dmSans(
                                    fontSize: 14.sp,
                                    color: blackColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(height: 5.h),
                          Row(
                            children: [
                              SizedBox(
                                width: 20.w,
                              ),
                              Text(
                                "₹499",
                                style: GoogleFonts.dmSans(
                                    fontSize: 21.7.sp, color: textcolor),
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
                width: 311.w,
                height: 280.h,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      crossAxisCount: 2),
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WashingScreen()));
                      },
                      child: Card(
                        elevation: 0,
                        child: Container(
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 49.w,
                                height: 63.h,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image:
                                            Svg("Assets/home_grid_one.svg"))),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                "Washing",
                                style: GoogleFonts.dmSans(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: gridColor),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 49.w,
                              height: 63.h,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Svg("Assets/home_grid_two.svg"))),
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              "Ironing",
                              style: GoogleFonts.dmSans(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: gridColor),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 49.w,
                              height: 63.h,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          Svg("Assets/home_grid_three.svg"))),
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              "Wash & Iron",
                              style: GoogleFonts.dmSans(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: gridColor),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 49.w,
                              height: 63.h,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Svg("Assets/home_grid_four.svg"))),
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              "Dry Clean",
                              style: GoogleFonts.dmSans(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: gridColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

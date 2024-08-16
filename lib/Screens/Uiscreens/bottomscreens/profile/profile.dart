import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:major_project/Screens/Uiscreens/bottomscreens/profile/aboutus.dart';
import 'package:major_project/Screens/Uiscreens/bottomscreens/profile/address.dart';
import 'package:major_project/Screens/Uiscreens/bottomscreens/profile/contactus.dart';
import 'package:major_project/Screens/Uiscreens/bottomscreens/profile/dashboard.dart';
import 'package:major_project/Screens/Uiscreens/bottomscreens/profile/faq.dart';
import 'package:major_project/Screens/Uiscreens/bottomscreens/profile/history.dart';
import 'package:major_project/Screens/Uiscreens/bottomscreens/profile/privacy_pol.dart';
import 'package:major_project/Screens/Uiscreens/bottomscreens/profile/reviews.dart';
import 'package:major_project/Screens/Uiscreens/bottomscreens/profile/reviews2.dart';
import 'package:major_project/Screens/widgets/login.dart';
import 'package:major_project/core/const.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 135.h,
              child: Container(
                color: profilebackground,
                height: 100.h,
                width: 50.w,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 210.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: Color(0xFFECF3F6),
                    height: 100.h,
                    width: 50.w,
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: profilebackground,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 20),
                              child: Text(
                                'Profile',
                                style: TextStyle(
                                  color: blackColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 30, left: 20),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    AssetImage('Assets/circle_avatarimage.png'),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'John Doe',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: blackColor,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '+91 8129862588',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: blackColor,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Text(
                                        'Edit profile',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: backgroundColorBlue,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Icon(Icons.edit,
                                          color: backgroundColorBlue, size: 16),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                  ),
                  height: 95,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: 159,
                          height: 60,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return ProfileHistory();
                              }));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: profilesecond,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('Assets/profile_shirt.png',
                                      width: 45),
                                  Text(
                                    'History',
                                    style: GoogleFonts.dmSans(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: SizedBox(
                          width: 159,
                          height: 60,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return ContactUs();
                              }));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: profilesecond,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('Assets/profile_contactus.png',
                                      width: 45),
                                  SizedBox(width: 8),
                                  Text(
                                    'Contact us',
                                    style: GoogleFonts.dmSans(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
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
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFECF3F6),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(50)),
                    ),
                    child: ListView(
                      padding: EdgeInsets.all(20),
                      children: [
                        ListTile(
                          leading: Image.asset(
                              width: 21, 'Assets/profile_dashboard.png'),
                          title: Text('Dashboard'),
                          trailing:
                              Icon(Icons.arrow_forward_ios, color: blackColor),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DashBoardPage();
                            }));
                          },
                        ),
                        ListTile(
                          leading: Image.asset(
                              width: 21, 'Assets/profile_address.png'),
                          title: Text('Address'),
                          trailing:
                              Icon(Icons.arrow_forward_ios, color: blackColor),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return AddressPage();
                            }));
                          },
                        ),
                        ListTile(
                          leading:
                              Image.asset(width: 25, 'Assets/profile_faq.png'),
                          title: Text('FAQ'),
                          trailing:
                              Icon(Icons.arrow_forward_ios, color: blackColor),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return FAQPage();
                            }));
                          },
                        ),
                        ListTile(
                          leading: Image.asset(
                              width: 25, 'Assets/profile_aboutus.png'),
                          title: Text('About Us'),
                          trailing:
                              Icon(Icons.arrow_forward_ios, color: blackColor),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return AboutUsWidget();
                            }));
                          },
                        ),
                        ListTile(
                          leading: Image.asset(
                              width: 25, 'Assets/profile_reviews.png'),
                          title: Text('Reviews'),
                          trailing:
                              Icon(Icons.arrow_forward_ios, color: blackColor),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ReviewsWidgetTwo();
                            }));
                          },
                        ),
                        ListTile(
                          leading: Image.asset(
                              width: 25, 'Assets/profile_privacy.png'),
                          title: Text('Privacy policy'),
                          trailing:
                              Icon(Icons.arrow_forward_ios, color: blackColor),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return PrivacyPolicy();
                            }));
                          },
                        ),
                        GestureDetector(
                          child: ListTile(
                            leading: Image.asset(
                                width: 25, 'Assets/profile_logout.png'),
                            title: Text('Logout'),
                            trailing: Icon(Icons.arrow_forward_ios,
                                color: blackColor),
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height: 230,
                                      width: 400,
                                      child: Column(children: [
                                        SizedBox(height: 5),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(width: 50),
                                            Text('Are You Sure',
                                                style: GoogleFonts.dmSans(
                                                    fontSize: 35,
                                                    color: blackColor,
                                                    fontWeight:
                                                        FontWeight.w700)),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 30),
                                              child: IconButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  icon: Image.asset(
                                                      width: 40,
                                                      'Assets/logout_close.png')),
                                            )
                                          ],
                                        ),
                                        Text('Do You want to Log out ?',
                                            style: GoogleFonts.dmSans(
                                                fontSize: 15,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w700)),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 30),
                                              child: SizedBox(
                                                width: 150,
                                                height: 70,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    'No',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.blue,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 50),
                                              child: SizedBox(
                                                width: 150,
                                                height: 70,
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.push(context,
                                                        MaterialPageRoute(
                                                            builder: (context) {
                                                      return LoginScreen();
                                                    }));
                                                  },
                                                  child: Text('Yes, Logout',
                                                      style: TextStyle(
                                                          color: Colors.white)),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              cancelcolor),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ]),
                                    );
                                  });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 0,
              left: 40,
              child: Image.asset(
                width: 350,
                height: 110,
                'Assets/profile_backgroundimage.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

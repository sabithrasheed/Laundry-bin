import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:major_project/Screens/widgets/background.dart';
import 'package:major_project/Screens/widgets/login.dart';
import 'package:major_project/Screens/widgets/register.dart';
import 'package:major_project/core/const.dart';

class FirstLogin extends StatelessWidget {
  const FirstLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImageContainer(),
          Positioned(
            top: MediaQuery.of(context).size.height / 3,
            right: MediaQuery.of(context).size.width / 5,
            child: Image(
                height: MediaQuery.of(context).size.height / 10,
                width: MediaQuery.of(context).size.width / 1.7,
                image: Svg("Assets/Group 1090.svg")),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 20,
            right: MediaQuery.of(context).size.height / 20,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }));
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        "Log in",
                        style: GoogleFonts.dmSans(
                            color: backgroundColorBlue,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(140.r)),
                    width: MediaQuery.of(context).size.width / 1.25,
                    height: MediaQuery.of(context).size.height / 14,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterScreen(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: whiteColor),
                        color: backgroundColorBlue,
                        borderRadius: BorderRadius.circular(140.r)),
                    width: MediaQuery.of(context).size.width / 1.25,
                    height: MediaQuery.of(context).size.height / 14,
                    child: Center(
                      child: Text(
                        "Register",
                        style: GoogleFonts.dmSans(
                            fontSize: 16.sp, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

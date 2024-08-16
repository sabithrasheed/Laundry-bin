import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:major_project/Screens/widgets/background.dart';
import 'package:major_project/Screens/widgets/first_login.dart';
import 'package:major_project/Screens/widgets/forgot.dart';
import 'package:major_project/Screens/widgets/otp.dart';

import 'package:major_project/Screens/widgets/register.dart';
import 'package:major_project/core/Providers/login_provider.dart';
import 'package:major_project/core/const.dart';

import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String _email, _password;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
                    return const FirstLogin();
                  },
                ));
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 10,
                height: MediaQuery.of(context).size.height / 22,
                child: SvgPicture.asset(
                  "Assets/arrow-left.svg",
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 4,
            left: MediaQuery.of(context).size.width / 7,
            child: Text(
              'Welcome back! Glad\nto see you, Again!',
              style: GoogleFonts.dmSans(
                fontSize: 26.sp,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 15,
            left: MediaQuery.of(context).size.width / 10,
            right: MediaQuery.of(context).size.width / 10,
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      style: TextStyle(color: blackColor),
                      decoration: InputDecoration(
                        fillColor: whiteColor,
                        filled: true,
                        hintText: 'Enter your email or Phone number',
                        hintStyle: GoogleFonts.dmSans(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: texthintcolor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: whiteColor, width: 2),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                        if (!emailRegex.hasMatch(value)) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                      onSaved: (newValue) {
                        _email = newValue!;
                      },
                    ),
                    SizedBox(height: 20.h),
                    TextFormField(
                      style: TextStyle(color: blackColor),
                      obscureText: true,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.visibility),
                        fillColor: whiteColor,
                        filled: true,
                        hintText: 'Enter your password',
                        hintStyle: GoogleFonts.dmSans(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: texthintcolor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: whiteColor, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: whiteColor, width: 2),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters';
                        }
                        return null;
                      },
                      onSaved: (newValue) {
                        _password = newValue!;
                      },
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      width: 290.w,
                      height: 48.h,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(whiteColor),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            Provider.of<LoginProvider>(context, listen: false)
                                .loginUser(_email, _password)
                                .then((_) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Registration successful!'),
                                  backgroundColor: Colors.green,
                                ),
                              );
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (Context) {
                                return OtpScreen();
                              }));
                              // Maybe navigate to a new screen
                            }).catchError((error) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Login failed: $error'),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            });
                          }
                        },
                        child: Text(
                          'Log in',
                          style: GoogleFonts.dmSans(
                            fontSize: 16.sp,
                            color: elevbuttcolor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return ForgotWidget();
                                },
                              ));
                            },
                            child: Text(
                              'Forgot Password?',
                              style: GoogleFonts.dmSans(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: whiteColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: Row(
                        children: [
                          Text(
                            "Don’t have an account?",
                            style: GoogleFonts.dmSans(
                              color: whiteColor,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return RegisterScreen();
                                },
                              ));
                            },
                            child: Text(
                              ' Register Now',
                              style: GoogleFonts.dmSans(
                                color: whiteColor,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

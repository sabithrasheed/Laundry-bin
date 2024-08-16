import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:major_project/Screens/widgets/background.dart';
import 'package:major_project/Screens/widgets/first_login.dart';
import 'package:major_project/Screens/widgets/login.dart';
import 'package:major_project/core/Providers/register_provider.dart';

import 'package:major_project/core/const.dart';

import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // final TextEditingController _usernameController = TextEditingController();
  late String _userName, _email, _password;

  late int _phoneNumber;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<UserProvider>(context, listen: false);
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
                    return FirstLogin();
                  },
                ));
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 10,
                height: MediaQuery.of(context).size.height / 22,
                child: SvgPicture.asset("Assets/arrow-left.svg"),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 5.2,
            left: MediaQuery.of(context).size.width / 6.6,
            child: Container(
              width: MediaQuery.of(context).size.width * 2 / 3,
              child: Text(
                'Hey There ! Welcome',
                style: GoogleFonts.dmSans(
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 18,
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
                        hintText: 'Enter Name',
                        hintStyle: GoogleFonts.dmSans(
                          color: texthintcolor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
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
                          return 'Please enter your name';
                        }
                        return null;
                      },
                      onSaved: (value) => _userName = value!,
                    ),
                    SizedBox(height: 15.h),
                    TextFormField(
                      style: TextStyle(color: blackColor),
                      decoration: InputDecoration(
                        fillColor: whiteColor,
                        filled: true,
                        hintText: 'Enter Email ID',
                        hintStyle: GoogleFonts.dmSans(
                          color: texthintcolor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
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
                          return 'Please enter your email';
                        }
                        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                      onSaved: (value) => _email = value!,
                    ),
                    SizedBox(height: 15.h),
                    TextFormField(
                      obscureText: true,
                      style: TextStyle(color: blackColor),
                      decoration: InputDecoration(
                        fillColor: whiteColor,
                        filled: true,
                        hintText: 'Enter your password',
                        hintStyle: GoogleFonts.dmSans(
                          color: texthintcolor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
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
                          return 'Password must be at least 6 characters long';
                        }
                        return null;
                      },
                      onSaved: (value) => _password = value!,
                    ),
                    SizedBox(height: 15.h),
                    TextFormField(
                      style: TextStyle(color: blackColor),
                      decoration: InputDecoration(
                        fillColor: whiteColor,
                        filled: true,
                        hintText: 'Enter your phone number',
                        hintStyle: GoogleFonts.dmSans(
                          color: texthintcolor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
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
                          return 'Please enter your phone number';
                        }
                        if (!RegExp(r'^\d{10}$').hasMatch(value)) {
                          return 'Please enter a valid 10-digit phone number';
                        }
                        return null;
                      },
                      onSaved: (value) => _phoneNumber = int.parse(value!),
                    ),
                    SizedBox(height: 15.h),
                    SizedBox(
                      width: 290.w,
                      height: 52.h,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(whiteColor),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            Provider.of<UserProvider>(context, listen: false)
                                .registerUser(
                                    _userName, _email, _password, _phoneNumber)
                                .then((_) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Registration successful!'),
                                  backgroundColor: Colors.green,
                                ),
                              );
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (Context) {
                                return LoginScreen();
                              }));
                              // Maybe navigate to a new screen
                            }).catchError((error) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Registration failed: $error'),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            });
                          }
                        },
                        child: Text(
                          'Register',
                          style: GoogleFonts.dmSans(
                            fontSize: 16.sp,
                            color: elevbuttcolor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Row(
                        children: [
                          Text(
                            'Already have an account? ',
                            style: GoogleFonts.dmSans(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: whiteColor,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'Log In',
                              style: GoogleFonts.dmSans(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: whiteColor,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          )
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

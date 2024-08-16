import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:major_project/core/const.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: profilebackground2,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(children: [
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
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: Text(
                    'Address',
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: blackColor,
                    ),
                  ),
                )
              ]),
              SizedBox(height: 20),
              Container(
                width: 333,
                height: 124,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: whiteColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Home',
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: blackColor,
                              )),
                          Image.asset(
                              width: 24, 'Assets/address_firstimage.png')
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(width: 14, 'Assets/address_location.png'),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                                '19 Cross between Hufuf and Al\nKhobar 33446,Saudi Arabia',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: blackColor,
                                )),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Image.asset(
                              width: 14, 'Assets/address_callimage.png'),
                          SizedBox(width: 5),
                          Text(
                            '+966 8415698625',
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: blackColor),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 333,
                height: 124,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: whiteColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Office',
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: blackColor,
                              )),
                          Image.asset(
                              width: 24, 'Assets/address_firstimage.png')
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(width: 14, 'Assets/address_location.png'),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                                '19 Cross between Hufuf and Al\nKhobar 33446,Saudi Arabia',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: blackColor,
                                )),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Image.asset(
                              width: 14, 'Assets/address_callimage.png'),
                          SizedBox(width: 5),
                          Text(
                            '+966 8415698625',
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: blackColor),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              // SizedBox(height: 100),
              SizedBox(
                width: 355,
                height: 64,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                  ),
                  child: Text('+Add'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

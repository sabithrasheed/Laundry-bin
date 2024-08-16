import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:major_project/core/const.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    SizedBox(width: 130),
                    Text("Faq",
                        style: GoogleFonts.dmSans(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: blackColor)),
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("What laundry services do you offers? ",
                          style: GoogleFonts.dmSans(
                              fontSize: 16,
                              color: blackColor,
                              fontWeight: FontWeight.w700)),
                      Icon(Icons.expand_more,
                          color: backgroundColorBlue, size: 30)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'We  offer  comprehensive laundry services including services inculding wash,dry. and fold options for various garments and linens. our exprienced team ensures top-quality ',
                    style: GoogleFonts.dmSans(
                        fontSize: 16,
                        color: blackColor,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How long does it take to get iron done?',
                        style: GoogleFonts.dmSans(
                            fontSize: 16,
                            color: blackColor,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.navigate_next, size: 30)
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Do you offer pickup and delivery?',
                        style: GoogleFonts.dmSans(
                            fontSize: 16,
                            color: blackColor,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 50),
                      Icon(Icons.navigate_next, size: 30)
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'What are you pricing option?',
                        style: GoogleFonts.dmSans(
                            fontSize: 16,
                            color: blackColor,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 60),
                      Icon(Icons.navigate_next, size: 30)
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'how do you ensure the safety laundry ',
                        style: GoogleFonts.dmSans(
                            fontSize: 16,
                            color: blackColor,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.navigate_next, size: 30)
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Do you provide eco-friendly options?',
                        style: GoogleFonts.dmSans(
                            fontSize: 16,
                            color: blackColor,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.navigate_next, size: 30)
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How long does it take to get iron done?',
                        style: GoogleFonts.dmSans(
                            fontSize: 16,
                            color: blackColor,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.navigate_next, size: 30)
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:major_project/core/const.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: washinglistcolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Notification',
                style: GoogleFonts.dmSans(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: blackColor,
                ),
              ),
            ),
            SizedBox(height: 30),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: whiteColor,
                radius: 30,
                child: Image.asset(width: 27, 'Assets/notification_image.png'),
              ),
              title: Text(
                  'Your laundry booking on 12 Dec 2024 at 02:00 PM has been successful! ',
                  style: GoogleFonts.dmSans(
                      fontSize: 13, fontWeight: FontWeight.w700)),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text('25th Sep 2021 at 3:32am ',
                    style: GoogleFonts.dmSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: textcolor)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Divider(
                color: Colors.grey.shade400,
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: whiteColor,
                radius: 30,
                child: Image.asset(width: 27, 'Assets/notification_image.png'),
              ),
              title: Text(
                  'Cancelled:"Appoinments for 12 DEC 2024 at 02.00pm Thank you.',
                  style: GoogleFonts.dmSans(
                      fontSize: 13, fontWeight: FontWeight.w700)),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text('25th Sep 2021 at 3:32am ',
                    style: GoogleFonts.dmSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: textcolor)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Divider(
                color: Colors.grey.shade400,
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: whiteColor,
                radius: 30,
                child: Image.asset(width: 27, 'Assets/notification_image.png'),
              ),
              title: Text("Tomorrow Don't forget laundry appoinment at 2:00pm",
                  style: GoogleFonts.dmSans(
                      fontSize: 13, fontWeight: FontWeight.w700)),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text('25th Sep 2021 at 3:32am ',
                    style: GoogleFonts.dmSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: textcolor)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Divider(
                color: Colors.grey.shade400,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

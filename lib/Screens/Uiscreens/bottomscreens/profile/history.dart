import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:major_project/Screens/Uiscreens/bottomscreens/orders/order_tracking.dart';
import 'package:major_project/Screens/Uiscreens/bottomscreens/orders/orders_id.dart';

import 'package:major_project/core/const.dart';

class ProfileHistory extends StatefulWidget {
  const ProfileHistory({Key? key}) : super(key: key);

  @override
  State<ProfileHistory> createState() => _ProfileHistoryState();
}

class _ProfileHistoryState extends State<ProfileHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 7,
                  ),
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
                    padding: const EdgeInsets.only(left: 110),
                    child: Text(
                      'History',
                      style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: Container(
                height: 30,
                width: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    'All Orders >',
                    style: GoogleFonts.dmSans(
                      color: Colors.blue,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(10),
                children: [
                  buildOrderCard(
                    orderType: 'Washing',
                    orderDate: '20 Dec 2024',
                    status: 'Completed',
                    statusColor: historycolor,
                    items: {
                      'Shirt': 2,
                      'T-Shirt': 2,
                      'Shorts': 1,
                      '+2 Items': null,
                    },
                    imagePath: 'Assets/orders_wasingimage.png',
                    price: '₹499',
                    actions: [
                      buildActionButton(
                        text: 'Details',
                        backgroundColor: Colors.blue.shade100,
                        textColor: Colors.blue,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return OrderId();
                          }));
                        },
                      ),
                      buildActionButton(
                        text: 'Tracking',
                        backgroundColor: Colors.blue.shade100,
                        textColor: const Color.fromARGB(255, 59, 158, 240),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return OrderTracking();
                          }));
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  buildOrderCard(
                    orderType: 'Ironing',
                    orderDate: '20 Dec 2024',
                    status: 'Completed',
                    statusColor: historycolor,
                    items: {
                      'Shirt': 2,
                      'T-Shirt': 2,
                      'Shorts': 1,
                      '+2 Items': null,
                    },
                    imagePath: 'Assets/orders_ironimage.png',
                    price: '₹499',
                    actions: [
                      buildActionButton(
                        text: 'Details',
                        backgroundColor: Colors.blue.shade100,
                        textColor: Colors.blue,
                        onPressed: () {},
                      ),
                      buildActionButton(
                        text: 'Add Rating',
                        backgroundColor: Colors.blue.shade100,
                        textColor: Colors.blue,
                        onPressed: () {
                          _showRatingBottomSheet(context);
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  buildOrderCard(
                    orderType: 'Ironing',
                    orderDate: '20 Dec 2024',
                    status: 'Completed',
                    statusColor: historycolor,
                    items: {
                      'Shirt': 2,
                      'T-Shirt': 2,
                      'Shorts': 1,
                      '+2 Items': null,
                    },
                    imagePath: 'Assets/orders_ironimage.png',
                    price: '₹499',
                    actions: [
                      buildActionButton(
                        text: 'Details',
                        backgroundColor: Colors.blue.shade100,
                        textColor: Colors.blue,
                        onPressed: () {},
                      ),
                      buildActionButton(
                        text: 'Add Rating',
                        backgroundColor: Colors.blue.shade100,
                        textColor: Colors.blue,
                        onPressed: () {
                          _showRatingBottomSheet(context);
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  buildOrderCard(
                    orderType: 'Washing',
                    orderDate: '20 Dec 2024',
                    status: 'Cancelled',
                    statusColor: Colors.red,
                    items: {
                      'Shirt': 2,
                      'T-Shirt': 2,
                      'Shorts': 1,
                      '+2 Items': null,
                    },
                    imagePath: 'Assets/orders_wasingimage.png',
                    actions: [
                      buildActionButton(
                        text: 'Details',
                        backgroundColor: Colors.blue.shade100,
                        textColor: Colors.blue,
                        onPressed: () {
                          // Add your action logic here
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOrderCard({
    required String orderType,
    required String orderDate,
    required String status,
    required Color statusColor,
    required Map<String, int?> items,
    required String imagePath,
    String? price,
    List<Widget> actions = const [],
  }) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      width: 110,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[200],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Image.asset(imagePath),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      orderDate,
                      style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            orderType,
                            style: GoogleFonts.dmSans(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Container(
                            height: 30,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: statusColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                status,
                                style: GoogleFonts.dmSans(
                                  color: whiteColor,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: items.keys.map((item) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                item,
                                style: GoogleFonts.dmSans(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                              if (items[item] != null)
                                Text(
                                  'x${items[item]}',
                                  style: GoogleFonts.dmSans(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                            ],
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: actions.map((action) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: action,
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (price != null) ...[
              SizedBox(height: 10),
              Text(
                price,
                style: GoogleFonts.dmSans(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget buildActionButton({
    required String text,
    required Color backgroundColor,
    required Color textColor,
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.dmSans(
              color: profilesecond,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }

  void _showRatingBottomSheet(BuildContext context) {
    int rating = 0;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'How satisfied were you with your experience?',
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(15),
                          color: bottomsheet,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(5, (index) {
                            return IconButton(
                              icon: Icon(
                                index < rating ? Icons.star : Icons.star_border,
                                size: 40,
                                color: Colors.blue,
                              ),
                              onPressed: () {
                                setState(() {
                                  rating = index + 1;
                                });
                              },
                            );
                          }),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: bottomsheet,
                        filled: true,
                        contentPadding: EdgeInsets.all(70),
                        hintText: 'Enter your feedback here',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: bottomsheet),
                        ),
                      ),
                      maxLines: 3,
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: SizedBox(
                        width: 500,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Submit',
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.bold,
                              color: whiteColor,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: backgroundColorBlue,
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

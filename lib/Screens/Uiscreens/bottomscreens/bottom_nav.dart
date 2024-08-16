import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:major_project/Screens/Uiscreens/bottomscreens/home.dart';
import 'package:major_project/Screens/Uiscreens/bottomscreens/notification.dart';
import 'package:major_project/Screens/Uiscreens/bottomscreens/orders/order.dart';
import 'package:major_project/Screens/Uiscreens/bottomscreens/profile/profile.dart';

class BottomWidget extends StatefulWidget {
  const BottomWidget({super.key});

  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {
  int _currentValue = 0;
  final List _pages = [
    HomeScreen(),
    OrdersPage(),
    NotificationPage(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentValue],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentValue,
        onTap: (index) {
          setState(() {
            _currentValue = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image(image: Svg('Assets/vuesax.svg')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image(image: Svg('Assets/vuesax (1).svg')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image(image: Svg('Assets/vuesax (2).svg')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image(image: Svg('Assets/vuesax (3).svg')),
            label: '',
          ),
        ],
      ),
    );
  }
}

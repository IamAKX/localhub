import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localhub/config/colors.dart';
import 'package:localhub/screen/business/add_product/add_product.dart';
import 'package:localhub/screen/business/home/home.dart';
import 'package:localhub/screen/business/notification/notification.dart';
import 'package:localhub/screen/business/order_status/order_status.dart';
import 'package:localhub/screen/business/ratings/ratings.dart';
import 'package:localhub/screen/ratings/view_ratings.dart';

class BusinessHomeContainer extends StatefulWidget {
  @override
  _BusinessHomeContainerState createState() => _BusinessHomeContainerState();
}

class _BusinessHomeContainerState extends State<BusinessHomeContainer> {
  int _currentIndex = 0;
  List<Widget> _children = [
    BusinessHome(),
    BusinessRatings(),
    AddProduct(),
    BusinessOrderStatus(),
    BusinessNotification(),
  ];

  List<String> title = [
    'Home ',
    'Ratings',
    'Add',
    'Orders',
    'Notification',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        selectedItemColor: BUTTON_BLACK,
        unselectedItemColor: HINT_COLOR,
        items: [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home)),
          BottomNavigationBarItem(
            label: 'Ratings',
            icon: Icon(Icons.star_outline),
            activeIcon: Icon(Icons.star),
          ),
          BottomNavigationBarItem(
            label: 'Add',
            icon: Icon(Icons.add_circle_outline_outlined),
            activeIcon: Icon(Icons.add_circle),
          ),
          BottomNavigationBarItem(
            label: 'Orders',
            icon: Icon(
              Icons.list_alt_outlined,
            ),
            activeIcon: Icon(
              Icons.list_sharp,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Notification',
            icon: Icon(
              Icons.notifications_none_outlined,
            ),
            activeIcon: Icon(
              Icons.notifications,
            ),
          ),
        ],
      ),
    );
  }
}

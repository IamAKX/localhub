import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localhub/config/colors.dart';
import 'package:localhub/screen/order/live_order.dart';
import 'package:localhub/screen/order/past_order.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> with SingleTickerProviderStateMixin {
  TabController _controller;
  int _selectedIndex = 0;
  List<Widget> list = [
    Tab(
      text: 'Live Order',
    ),
    Tab(
      text: 'Past Order',
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: list.length, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: TabBar(
            onTap: (index) {
              // Should not used it as it only called when tab options are clicked,
              // not when user swapped
            },
            controller: _controller,
            tabs: list,
            labelStyle: GoogleFonts.roboto(
              fontSize: 16,
              color: BUTTON_BLACK,
              fontWeight: FontWeight.bold,
            ),
            labelColor: BUTTON_BLACK,
            unselectedLabelStyle: GoogleFonts.roboto(
              fontSize: 14,
              color: Colors.grey,
            ),
            indicatorColor: BUTTON_BLACK,
            unselectedLabelColor: Colors.grey,
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _controller,
            children: [
              LiveOrder(),
              PastOrder(),
              // LiveOrder()
            ],
          ),
        )
      ],
    );
  }
}

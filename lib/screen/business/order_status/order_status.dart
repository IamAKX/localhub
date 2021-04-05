import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localhub/config/colors.dart';
import 'package:localhub/config/static_data.dart';
import 'package:localhub/screen/business/order_status/all_order.dart';
import 'package:localhub/screen/business/order_status/delivered_order.dart';
import 'package:localhub/screen/business/order_status/ontheway_order.dart';
import 'package:localhub/screen/business/order_status/pending_order.dart';
import 'package:localhub/screen/business/order_status/processing_order.dart';

class BusinessOrderStatus extends StatefulWidget {
  @override
  _BusinessOrderStatusState createState() => _BusinessOrderStatusState();
}

class _BusinessOrderStatusState extends State<BusinessOrderStatus>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _selectedIndex = 0;
  List<Widget> list = [
    Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tab(
          text: 'All',
        ),
        SizedBox(
          width: 5,
        ),
        CircleAvatar(
          radius: 12,
          backgroundColor: BUTTON_BLACK,
          child: Text(
            '${getOrderList().length}',
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontSize: 9,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    ),
    Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tab(
          text: 'Pending',
        ),
        SizedBox(
          width: 5,
        ),
        CircleAvatar(
          radius: 12,
          backgroundColor: BUTTON_BLACK,
          child: Text(
            '${getOrderList().where((element) => element.status == 'Pending').toList().length}',
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontSize: 9,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    ),
    Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tab(
          text: 'Processing',
        ),
        SizedBox(
          width: 5,
        ),
        CircleAvatar(
          radius: 12,
          backgroundColor: BUTTON_BLACK,
          child: Text(
            '${getOrderList().where((element) => element.status == 'Processing').toList().length}',
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontSize: 9,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    ),
    Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tab(
          text: 'Ontheway',
        ),
        SizedBox(
          width: 5,
        ),
        CircleAvatar(
          radius: 12,
          backgroundColor: BUTTON_BLACK,
          child: Text(
            '${getOrderList().where((element) => element.status == 'Ontheway').toList().length}',
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontSize: 9,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    ),
    Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tab(
          text: 'Delivered',
        ),
        SizedBox(
          width: 5,
        ),
        CircleAvatar(
          radius: 12,
          backgroundColor: BUTTON_BLACK,
          child: Text(
            '${getOrderList().where((element) => element.status == 'Delivered').toList().length}',
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontSize: 9,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
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
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Orders'),
      ),
      backgroundColor: Color(0xfff2f2f2),
      body: body(),
    );
  }

  body() {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: TabBar(
            isScrollable: true,
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
              AllOrders(),
              PendingOrders(),
              ProcessingOrders(),
              OnTheWayOrders(),
              DeliveredOrders(),
            ],
          ),
        )
      ],
    );
  }
}

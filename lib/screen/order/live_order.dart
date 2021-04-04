import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localhub/config/colors.dart';

class LiveOrder extends StatefulWidget {
  @override
  _LiveOrderState createState() => _LiveOrderState();
}

class _LiveOrderState extends State<LiveOrder> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        getOrderCard(context, false),
        getOrderCard(context, true),
      ],
    );
  }

  ExpansionTile getOrderCard(BuildContext context, bool isdelivered) {
    return ExpansionTile(
      childrenPadding: EdgeInsets.symmetric(horizontal: 15),
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      backgroundColor: Colors.white,
      trailing: SizedBox.shrink(),
      title: Stack(
        children: [
          Card(
            elevation: 4,
            margin: EdgeInsets.only(top: 5, right: 0, left: 40, bottom: 5),
            color: Colors.white,
            child: Container(
              height: 85,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 60),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sultan Sweet',
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '2 min ago',
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                            color: Color(0xff828282),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Mankool Road',
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      'Order Confirmed',
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 15,
            left: 10,
            child: Container(
              width: 70,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(5)),
              child: Image.asset('assets/images/sultan_sweets.png'),
            ),
          ),
        ],
      ),
      children: [
        Text(
          'Your Order',
          style: GoogleFonts.openSans(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        getCartItemRow(),
        SizedBox(
          height: 5,
        ),
        getCartItemRow(),
        SizedBox(
          height: 5,
        ),
        Divider(
          color: Colors.grey,
        ),
        ListTile(
          leading: Image.asset('assets/images/notes.png'),
          title: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing.',
            style: GoogleFonts.openSans(
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
        Text(
          'Your Bill',
          style: GoogleFonts.openSans(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Subtotal',
              style: GoogleFonts.openSans(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'AED 100.0',
              style: GoogleFonts.openSans(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Service Charge',
              style: GoogleFonts.openSans(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'AED 15.0',
              style: GoogleFonts.openSans(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Divider(
          color: Colors.grey[300],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total',
              style: GoogleFonts.openSans(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'AED 150.0',
              style: GoogleFonts.openSans(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Order Details',
          style: GoogleFonts.openSans(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Order Number',
              style: GoogleFonts.openSans(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              '#2132',
              style: GoogleFonts.openSans(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Date',
              style: GoogleFonts.openSans(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              '10/05/2019 07:29 PM',
              style: GoogleFonts.openSans(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Payment Mode',
              style: GoogleFonts.openSans(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'Cash On Delivery',
              style: GoogleFonts.openSans(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Delivery Address',
              style: GoogleFonts.openSans(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.55,
              child: Text(
                '9394 Avenue - 1st St - Al Barsha - Dubai',
                textAlign: TextAlign.end,
                style: GoogleFonts.openSans(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Row getCartItemRow() {
    return Row(
      children: [
        Image.asset(
          'assets/images/item_images/item4.png',
          width: 41,
          height: 41,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cashew Fingers',
              style: GoogleFonts.openSans(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              '1 Kg',
              style: GoogleFonts.openSans(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Spacer(),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(
                Icons.remove,
                color: Colors.grey,
                size: 20,
              ),
              onPressed: () {
                setState(() {});
              },
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 3),
              child: Text(
                '2',
                style: GoogleFonts.openSans(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.add,
                size: 20,
              ),
              onPressed: () {
                setState(() {});
              },
            ),
          ],
        ),
        Text(
          'AED 50.0',
          style: GoogleFonts.openSans(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}

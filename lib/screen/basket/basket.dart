import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localhub/config/colors.dart';
import 'package:localhub/config/static_data.dart';

class Basket extends StatefulWidget {
  @override
  _BasketState createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Bag'),
      ),
      body: body(),
      backgroundColor: Colors.white,
    );
  }

  body() {
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10),
            children: [
              SizedBox(
                height: 5,
              ),
              getCartItemRow(),
              SizedBox(
                height: 10,
              ),
              getCartItemRow(),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Customer Information',
                style: GoogleFonts.openSans(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '  Akash',
                style: GoogleFonts.openSans(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey[300],
                indent: 5,
                endIndent: 5,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '  +91 9879879870',
                style: GoogleFonts.openSans(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey[300],
                indent: 5,
                endIndent: 5,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '  9394 Avenue - 1st St - Al Barsha - Dubai',
                style: GoogleFonts.openSans(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Special Request',
                style: GoogleFonts.openSans(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset('assets/images/notes.png'),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Add a note',
                    style: GoogleFonts.openSans(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Text(
                  LOREM_TITLE,
                  style: GoogleFonts.openSans(
                    fontSize: 13,
                    color: HINT_COLOR,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Divider(
                color: Colors.grey[400],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset('assets/images/offer.png'),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '#124BG',
                    style: GoogleFonts.openSans(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.chevron_right),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey[400],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Your Bill',
                style: GoogleFonts.openSans(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 15,
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
                height: 10,
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
              SizedBox(
                height: 7,
              ),
              Divider(
                color: Colors.grey[300],
              ),
              SizedBox(
                height: 7,
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
              Divider(
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Payment Method : COD Only',
                style: GoogleFonts.openSans(
                  fontSize: 17,
                  color: Colors.red[500],
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: EdgeInsets.all(15),
          color: BUTTON_BLACK,
          child: Text(
            'Confirm',
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
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

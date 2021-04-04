import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localhub/config/colors.dart';
import 'package:localhub/widgets/custom_input.dart';
import 'package:localhub/widgets/text_border.dart';

class PastOrder extends StatefulWidget {
  @override
  _PastOrderState createState() => _PastOrderState();
}

class _PastOrderState extends State<PastOrder> {
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Mankhool Road',
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                        if (isdelivered)
                          Container(
                            decoration: BoxDecoration(
                                color: BUTTON_BLACK,
                                borderRadius: BorderRadius.circular(3)),
                            padding: EdgeInsets.all(5),
                            child: InkWell(
                              onTap: () {
                                showRatingBottomSheet(context);
                              },
                              child: Text(
                                'Rate now',
                                style: GoogleFonts.openSans(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        else
                          Text(
                            '8/10',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'AED 150.0',
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          'Delivered',
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                      ],
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

  void showRatingBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        builder: (builder) {
          return Wrap(
            children: [
              new Container(
                width: double.infinity,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(10.0),
                    topRight: const Radius.circular(10.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.keyboard_arrow_up_outlined),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Text(
                      'Rate this order',
                      style: GoogleFonts.openSans(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextBorder(
                      borderColors: Colors.grey[500],
                      text: Text(
                        'Slide across the stars to Rate',
                        style: GoogleFonts.openSans(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[500]),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: RatingBar.builder(
                          initialRating: 0,
                          minRating: 1,
                          itemSize: 30,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ),
                    ),
                    TextBorder(
                      borderColors: Colors.grey[500],
                      text: Text(
                        'Enter your review..',
                        style: GoogleFonts.openSans(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[500]),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: plainTextField(null),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 20),
                      alignment: Alignment.centerRight,
                      child: Text(' at least 140 characters'),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      color: BUTTON_BLACK,
                      alignment: Alignment.center,
                      child: Text(
                        'Submit',
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}

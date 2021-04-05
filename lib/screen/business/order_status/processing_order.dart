import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localhub/config/colors.dart';
import 'package:localhub/config/static_data.dart';
import 'package:localhub/model/order_model.dart';
import 'package:localhub/screen/order/order.dart';
import 'package:localhub/widgets/my_expansion_tile.dart';

class ProcessingOrders extends StatefulWidget {
  @override
  _ProcessingOrdersState createState() => _ProcessingOrdersState();
}

class _ProcessingOrdersState extends State<ProcessingOrders> {
  // List<OrderModel> orderList = getOrderList();
  List<OrderModel> orderList = getOrderList()
      .where((element) => element.status == 'Processing')
      .toList();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (OrderModel model in orderList) ...{
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            elevation: 5,
            child: MyExpansionTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xffC4C4C4),
                ),
              ),
              backgroundColor: Colors.white,
              title: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Order #${model.orderNumber}',
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        '${model.orderTimestamp}',
                        style: GoogleFonts.openSans(
                          color: HINT_COLOR,
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${model.customerName}',
                        style: GoogleFonts.openSans(
                          color: HINT_COLOR,
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                      if (model.isAccepted == 'N')
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 5),
                            decoration: BoxDecoration(
                              color: Color(0xff4CD964),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Text(
                              'Confirm',
                              style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 11,
                              ),
                            ),
                          ),
                        )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total:AED ${model.totalAmount}|${model.totalQuantity} Quantity',
                        style: GoogleFonts.openSans(
                          color: HINT_COLOR,
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        '${model.status}',
                        style: GoogleFonts.openSans(
                          color: getColorByOrderStatus(model.status),
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              childrenPadding: EdgeInsets.symmetric(horizontal: 15),
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Your Order',
                  style: GoogleFonts.openSans(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                getCartItemRow(),
                SizedBox(
                  height: 10,
                ),
                getCartItemRow(),
                SizedBox(
                  height: 10,
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
                  height: 10,
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
                  height: 15,
                ),
                Text(
                  'Order Details',
                  style: GoogleFonts.openSans(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10,
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
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Icon(Icons.keyboard_arrow_up_outlined),
                ),
              ],
            ),
          ),
        }
      ],
    );
  }

  getColorByOrderStatus(String status) {
    switch (status) {
      case 'Not Accepted':
        return Color(0xffEB5757);
      case 'Pending':
        return Color(0xffF2994A);
      case 'Processing':
        return Color(0xffBB6BD9);
      case 'Ontheway':
        return Color(0xff56CCF2);
      case 'Delivered':
        return Color(0xff6FCF97);
    }
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

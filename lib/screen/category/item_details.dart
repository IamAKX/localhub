import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localhub/config/colors.dart';
import 'package:localhub/model/item_model.dart';

class ItemDetails extends StatefulWidget {
  ItemModel item;
  ItemDetails(this.item) : super();

  @override
  _ItemDetailsState createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  int tag = 0;
  int qty = 1;
  List<String> options = [
    '1 Kg',
    '2 Kg',
    '500 g',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: body(),
    );
  }

  body() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 10),
              children: [
                Image.asset(
                  widget.item.image,
                  fit: BoxFit.cover,
                  height: 300,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.item.name,
                  style: GoogleFonts.openSans(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.item.amount,
                  style: GoogleFonts.openSans(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.2),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Ingredients',
                  style: GoogleFonts.openSans(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Kunafa, Pistachio, Cream, Milk, Sugar, and Butter.',
                  style: GoogleFonts.openSans(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.2),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Select Size',
                  style: GoogleFonts.openSans(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ChipsChoice<int>.single(
                  choiceActiveStyle: C2ChoiceStyle(
                    borderColor: BUTTON_BLACK,
                    borderRadius: BorderRadius.circular(5),
                    color: BUTTON_BLACK,
                  ),
                  choiceStyle: C2ChoiceStyle(
                    borderColor: Colors.grey[400],
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[400],
                  ),
                  value: tag,
                  onChanged: (val) => setState(() => tag = val),
                  choiceItems: C2Choice.listFrom<int, String>(
                    source: options,
                    value: (i, v) => i,
                    label: (i, v) => v,
                  ),
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.2),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.remove,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            if (qty > 1) qty--;
                          });
                        },
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          '$qty',
                          style: GoogleFonts.openSans(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            qty++;
                          });
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () => Navigator.of(context).pushNamed('/basket'),
            child: Container(
              padding: EdgeInsets.all(15),
              color: BUTTON_BLACK,
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Total  ',
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'AED 73.5',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Add to basket',
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right_outlined,
                    color: Colors.white,
                    size: 30,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

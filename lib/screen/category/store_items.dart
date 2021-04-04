import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localhub/config/colors.dart';
import 'package:localhub/config/static_data.dart';
import 'package:localhub/widgets/custom_input.dart';

class StoreItems extends StatefulWidget {
  var storeName;
  StoreItems(this.storeName) : super();

  @override
  _StoreItemsState createState() => _StoreItemsState();
}

class _StoreItemsState extends State<StoreItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: body(),
    );
  }

  body() {
    return Container(
      padding: EdgeInsets.only(top: 25),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 24,
              ),
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              IconButton(
                icon: Icon(Icons.favorite_outline),
                onPressed: () {},
              ),
              Text(
                '21',
                style: GoogleFonts.openSans(fontSize: 16),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: 150,
                child: Text(
                  widget.storeName,
                  style: GoogleFonts.openSans(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              IconButton(
                icon: Icon(Icons.keyboard_arrow_down_outlined),
                onPressed: () {
                  showFilterBottomSheet(context);
                },
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.more_vert_outlined),
                onPressed: () {
                  showMenuBottomSheet(context);
                },
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: buildAppbarSearchField('Search', null),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/sand_background.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                children: List.generate(
                  getItemModel().length,
                  (index) => InkWell(
                    onTap: () => Navigator.of(context).pushNamed('/itemDetails',
                        arguments: getItemModel().elementAt(index)),
                    child: Card(
                      margin: EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            getItemModel().elementAt(index).image,
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Text(
                              getItemModel().elementAt(index).name,
                              style: GoogleFonts.openSans(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  getItemModel().elementAt(index).quantity,
                                  style: GoogleFonts.openSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  getItemModel().elementAt(index).amount,
                                  style: GoogleFonts.openSans(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.of(context).pushNamed('/basket'),
            child: Container(
              color: BUTTON_BLACK,
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 20,
                    child: CircleAvatar(
                      maxRadius: 18,
                      backgroundColor: BUTTON_BLACK,
                      child: Text(
                        '2',
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'View Bag',
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
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
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.chevron_right_outlined,
                    color: Colors.white,
                    size: 30,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void showFilterBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        builder: (builder) {
          return Wrap(
            children: [
              new Container(
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(10.0),
                    topRight: const Radius.circular(10.0),
                  ),
                ),
                child: Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.keyboard_arrow_up_outlined),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: Text('Sweets'),
                    ),
                    Divider(
                      indent: 10,
                      endIndent: 10,
                      color: Colors.grey,
                    ),
                    ListTile(
                      title: Text('Food'),
                    ),
                    Divider(
                      indent: 10,
                      endIndent: 10,
                      color: Colors.grey,
                    ),
                    ListTile(
                      title: Text('Bags'),
                    ),
                    Divider(
                      indent: 10,
                      endIndent: 10,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }

  void showMenuBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        builder: (builder) {
          return Wrap(
            children: [
              new Container(
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(10.0),
                    topRight: const Radius.circular(10.0),
                  ),
                ),
                child: Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.keyboard_arrow_up_outlined),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: Text('Add to Fav'),
                    ),
                    Divider(
                      indent: 10,
                      endIndent: 10,
                      color: Colors.grey,
                    ),
                    ListTile(
                      title: Text('View Ratings'),
                      onTap: () =>
                          Navigator.of(context).pushNamed('/viewRatings'),
                    ),
                    Divider(
                      indent: 10,
                      endIndent: 10,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}

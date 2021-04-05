import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:localhub/config/colors.dart';
import 'package:localhub/config/static_data.dart';
import 'package:localhub/model/item_model.dart';

class BusinessHome extends StatefulWidget {
  @override
  _BusinessHomeState createState() => _BusinessHomeState();
}

class _BusinessHomeState extends State<BusinessHome> {
  bool enabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Sultan Sweets',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
            InkWell(
              onTap: () {
                showAccountsBottomSheet(context);
              },
              child: Icon(Icons.keyboard_arrow_down_outlined),
            )
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(LineAwesomeIcons.gear),
            onPressed: () {
              Navigator.of(context).pushNamed('/business/profileSettings');
            },
          ),
        ],
      ),
      body: body(),
    );
  }

  body() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              radius: 55,
              child: Image.asset(
                'assets/images/sultan_sweets.png',
                width: 110,
                height: 110,
                fit: BoxFit.fill,
              ),
              backgroundColor: Color(0xffF8E69E),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Sultan Sweets',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'Mankhool Road',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GridView.count(
              shrinkWrap: true,
              primary: true,
              childAspectRatio: 0.9,
              crossAxisCount: 2,
              children: List.generate(getItemModel().length, (index) {
                ItemModel model = getItemModel().elementAt(index);
                return Container(
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[500].withOpacity(0.5),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        model.image,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        height: 130,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          model.name,
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          model.quantity,
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              model.amount,
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              ),
                            ),
                          ),
                          CupertinoSwitch(
                            activeColor: BUTTON_BLACK,
                            value: enabled,
                            onChanged: (value) {
                              setState(() {
                                enabled = value;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }

  void showAccountsBottomSheet(BuildContext context) {
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
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            AssetImage('assets/images/user_dummy_1.png'),
                      ),
                      title: Text(
                        'Craig Kenter',
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Divider(
                      color: BORDER_GREY,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            AssetImage('assets/images/user_dummy_2.png'),
                      ),
                      title: Text(
                        'Leo Dias',
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          color: HINT_COLOR,
                        ),
                      ),
                    ),
                    Divider(
                      color: BORDER_GREY,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            AssetImage('assets/images/user_dummy_3.png'),
                      ),
                      title: Text(
                        'Sultan Sweets',
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          color: HINT_COLOR,
                        ),
                      ),
                    ),
                    Divider(
                      color: BORDER_GREY,
                    ),
                    ListTile(
                      onTap: () {},
                      trailing: Icon(Icons.chevron_right),
                      title: Text(
                        'Add Account',
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Divider(
                      color: BORDER_GREY,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}

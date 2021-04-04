import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:localhub/config/colors.dart';
import 'package:localhub/widgets/text_border.dart';
import 'package:localhub/widgets/custom_input.dart';

class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  List<File> productImageList = [];
  final _scrollController = ScrollController();

  final picker = ImagePicker();
  bool switchSweet = false;
  bool switchFood = false;
  bool switchBag = false;
  bool publish = false;
  String unit = 'KG';
  String size = '1';
  String color = 'Black';
  String quantity = '100Kg';

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      updateSelectedImage(File(pickedFile.path));
    }
  }

  updateSelectedImage(File selectedImage) {
    setState(() {
      productImageList.add(selectedImage);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Add Item'),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Save',
                    style: GoogleFonts.openSans(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: body(),
    );
  }

  body() {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10),
      children: [
        Container(
          width: double.infinity,
          height: 100,
          child: ListView(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            children: [
              for (File f in productImageList) ...{
                Container(
                  width: 90,
                  height: 90,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: BORDER_GREY,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: FileImage(f),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              },
              InkWell(
                onTap: () => getImage(),
                child: Container(
                  child: Icon(Icons.add),
                  width: 90,
                  height: 90,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: BORDER_GREY,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
        TextBorder(
          borderColors: BORDER_GREY,
          text: Text(
            'Category',
            style: GoogleFonts.openSans(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: HINT_COLOR,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text(
                  'Sweet',
                  style: GoogleFonts.openSans(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: CupertinoSwitch(
                  activeColor: BUTTON_BLACK,
                  onChanged: (bool value) {
                    setState(() {
                      switchSweet = value;
                    });
                  },
                  value: switchSweet,
                ),
              ),
              ListTile(
                title: Text(
                  'Food',
                  style: GoogleFonts.openSans(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: CupertinoSwitch(
                  activeColor: BUTTON_BLACK,
                  onChanged: (bool value) {
                    setState(() {
                      switchFood = value;
                    });
                  },
                  value: switchFood,
                ),
              ),
              ListTile(
                title: Text(
                  'Bags',
                  style: GoogleFonts.openSans(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: CupertinoSwitch(
                  activeColor: BUTTON_BLACK,
                  onChanged: (bool value) {
                    setState(() {
                      switchBag = value;
                    });
                  },
                  value: switchBag,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        buildBorderedInputFieldByType('Item Name', TextInputType.name, null),
        SizedBox(height: 20),
        buildBorderedInputFieldByTypeWithPrefixText(
            'Price', TextInputType.number, null, 'AED '),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: TextBorder(
                borderColors: BORDER_GREY,
                text: Text(
                  'Size',
                  style: GoogleFonts.openSans(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: HINT_COLOR,
                  ),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: size,
                    items: <String>['1', '2', '3', '250', '500', '750']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        size = val;
                      });
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 1,
              child: TextBorder(
                borderColors: BORDER_GREY,
                text: Text(
                  'Unit',
                  style: GoogleFonts.openSans(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: HINT_COLOR,
                  ),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: unit,
                    items: <String>['KG', 'g', 'piece', 'L', 'ml']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        unit = val;
                      });
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        TextBorder(
          borderColors: BORDER_GREY,
          text: Text(
            'Color to Choose',
            style: GoogleFonts.openSans(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: HINT_COLOR,
            ),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: color,
              items: <String>[
                'Black',
                'Blue',
                'Orange',
                'Purple',
                'Green',
                'Amber'
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (val) {
                setState(() {
                  color = val;
                });
              },
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextBorder(
          borderColors: BORDER_GREY,
          text: Text(
            'Quantity',
            style: GoogleFonts.openSans(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: HINT_COLOR,
            ),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: quantity,
              items: <String>[
                '100Kg',
                '200Kg',
                '300Kg',
                '400Kg',
                '500Kg',
                '600Kg'
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (val) {
                setState(() {
                  quantity = val;
                });
              },
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextBorder(
          borderColors: BORDER_GREY,
          text: Text(
            'Description',
            style: GoogleFonts.openSans(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: HINT_COLOR,
            ),
          ),
          child: plainTextField(null),
        ),
        SizedBox(
          height: 20,
        ),
        TextBorder(
          borderColors: BORDER_GREY,
          text: Text(
            'Item Status',
            style: GoogleFonts.openSans(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: HINT_COLOR,
            ),
          ),
          child: SwitchListTile(
            title: Text(
              'Publish',
              style: GoogleFonts.openSans(
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
            value: publish,
            activeColor: Colors.green,
            onChanged: (bool value) {
              setState(() {
                publish = value;
              });
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

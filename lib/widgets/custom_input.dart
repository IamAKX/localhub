import 'dart:io';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:localhub/config/colors.dart';
import 'package:localhub/config/static_data.dart';
import 'package:multi_select_flutter/chip_display/multi_select_chip_display.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:multi_select_flutter/util/multi_select_list_type.dart';

buildInputFieldByType(
    String label, TextInputType type, TextEditingController controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          label,
          style: TextStyle(
            color: HINT_COLOR,
            fontSize: 14,
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      TextFormField(
        controller: controller,
        autocorrect: true,
        keyboardType: type,
        cursorColor: BUTTON_BLACK,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 1,
              style: BorderStyle.solid,
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 1,
              style: BorderStyle.solid,
              color: Colors.grey,
            ),
          ),
        ),
      )
    ],
  );
}

buildImagePickerInput(
    String label, Function() getImage, Function() getFileName) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          label,
          style: TextStyle(
            color: HINT_COLOR,
            fontSize: 14,
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        alignment: Alignment.center,
        height: 60,
        padding: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(getFileName()),
            IconButton(
              icon: Icon(Icons.add_photo_alternate_rounded),
              onPressed: () {
                getImage();
              },
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
            style: BorderStyle.solid,
            color: Colors.grey,
          ),
        ),
      ),
    ],
  );
}

buildCategoryDropdown(String label, Function() getCategoryDisplayText,
    Function(List<dynamic>) updateSelectedCategory) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          label,
          style: TextStyle(
            color: HINT_COLOR,
            fontSize: 14,
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      MultiSelectDialogField(
        height: 500,
        title: Text('Category'),
        buttonText: Text(
          getCategoryDisplayText(),
          style: GoogleFonts.openSans(
            height: 3,
          ),
        ),
        buttonIcon: Icon(Icons.keyboard_arrow_down_outlined),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
            style: BorderStyle.solid,
            color: Colors.grey,
          ),
          color: Colors.white,
        ),
        checkColor: BUTTON_BLACK,
        cancelText: Text(
          'Cancel',
          style: GoogleFonts.openSans(
            color: BUTTON_BLACK,
            fontWeight: FontWeight.w600,
          ),
        ),
        confirmText: Text(
          'Okay',
          style: GoogleFonts.openSans(
            color: BUTTON_BLACK,
            fontWeight: FontWeight.w600,
          ),
        ),
        items: getItemCategory().map((e) => MultiSelectItem(e, e)).toList(),
        listType: MultiSelectListType.LIST,
        chipDisplay: MultiSelectChipDisplay.none(),
        onConfirm: (values) => updateSelectedCategory(values),
      ),
    ],
  );
}

buildPhoneInputField(String label, TextInputType type,
    TextEditingController controller, Function(CountryCode) updateCountryCode) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          label,
          style: TextStyle(
            color: HINT_COLOR,
            fontSize: 14,
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      TextFormField(
        controller: controller,
        autocorrect: true,
        keyboardType: type,
        cursorColor: BUTTON_BLACK,
        decoration: InputDecoration(
          prefix: CountryCodePicker(
            onChanged: (value) => updateCountryCode(value),
            initialSelection: 'IN',
            favorite: ['+966', '+971', '+91'],
            showCountryOnly: false,
            showOnlyCountryWhenClosed: false,
            alignLeft: false,
            showFlag: false,
            padding: EdgeInsets.zero,
          ),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 1,
              style: BorderStyle.solid,
              color: Colors.grey,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 5),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 1,
              style: BorderStyle.solid,
              color: Colors.grey,
            ),
          ),
        ),
      )
    ],
  );
}

buildPasswordInputField(
    String label,
    TextInputType type,
    TextEditingController controller,
    bool isPasswordVisible,
    Function() tooglePasswordVisibility) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text(
          label,
          style: TextStyle(
            color: HINT_COLOR,
            fontSize: 14,
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      TextFormField(
        controller: controller,
        autocorrect: true,
        obscureText: isPasswordVisible,
        keyboardType: type,
        cursorColor: BUTTON_BLACK,
        decoration: InputDecoration(
          suffixIcon: IconButton(
              icon: Icon(
                isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                color: BUTTON_BLACK,
              ),
              onPressed: tooglePasswordVisibility),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 1,
              style: BorderStyle.solid,
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 1,
              style: BorderStyle.solid,
              color: Colors.grey,
            ),
          ),
        ),
      )
    ],
  );
}

buildAppbarSearchField(String label, TextEditingController controller) {
  return TextFormField(
    controller: controller,
    autocorrect: true,
    keyboardType: TextInputType.name,
    cursorColor: BUTTON_BLACK,
    decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: Colors.grey,
        ),
        hintText: label,
        fillColor: Color(0xfff2f2f2),
        filled: true,
        enabledBorder: InputBorder.none),
  );
}

plainTextField(TextEditingController controller) {
  return TextFormField(
    controller: controller,
    autocorrect: true,
    maxLines: 5,
    minLines: 5,
    keyboardType: TextInputType.name,
    cursorColor: BUTTON_BLACK,
    decoration: InputDecoration(filled: false, enabledBorder: InputBorder.none),
  );
}

buildBorderedInputFieldByType(
    String label, TextInputType type, TextEditingController controller) {
  return TextField(
    controller: controller,
    keyboardType: type,
    autocorrect: true,
    cursorColor: BUTTON_BLACK,
    decoration: new InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[500], width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
        labelText: label,
        labelStyle: GoogleFonts.openSans(
          color: Colors.grey,
        )),
  );
}

buildBorderedInputFieldByTypeWithSuffixIcon(
    String label,
    TextInputType type,
    TextEditingController controller,
    IconData suffixIcon,
    Function() suffixAction) {
  return TextField(
    controller: controller,
    keyboardType: type,
    autocorrect: true,
    cursorColor: BUTTON_BLACK,
    decoration: new InputDecoration(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey[500], width: 1.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 1.0),
      ),
      suffix: InkWell(
        child: Icon(suffixIcon),
        onTap: suffixAction,
      ),
      labelText: label,
      labelStyle: GoogleFonts.openSans(
        color: Colors.grey,
      ),
    ),
  );
}

buildPasswordOutlineInputField(
    String label,
    TextInputType type,
    TextEditingController controller,
    bool isPasswordVisible,
    Function() tooglePasswordVisibility) {
  return TextField(
    controller: controller,
    keyboardType: type,
    obscureText: isPasswordVisible,
    autocorrect: true,
    cursorColor: BUTTON_BLACK,
    decoration: new InputDecoration(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey[500], width: 1.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 1.0),
      ),
      suffix: InkWell(
        child: Icon(
          isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          color: BUTTON_BLACK,
        ),
        onTap: tooglePasswordVisibility,
      ),
      labelText: label,
      labelStyle: GoogleFonts.openSans(
        color: Colors.grey,
      ),
    ),
  );
}

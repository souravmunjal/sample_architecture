import 'package:flutter/material.dart';
import 'package:sample_architecture/core/base_colors/colors.dart';

class CustomStyles {
  static TextStyle textFieldHintTextStyle =
      TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold);

  static TextStyle headerTextStyle =
      TextStyle(fontSize: 34, color: Colors.black, fontWeight: FontWeight.bold);

  static TextStyle largeBoldTextStyle =
      TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold);

  static TextStyle headingTextStyle =
      TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold);

  static TextStyle thinTextStyle =
      TextStyle(fontWeight: FontWeight.w500, color: Colors.black);

  static TextStyle normalTextStyle = TextStyle(
      fontSize: 16, color: Colors.black, fontWeight: FontWeight.normal);

  static TextStyle normal600TextStyle =
      TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600);

  static TextStyle small600TextStyle =
      TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600);

  static TextStyle big600TextStyle =
      TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600);

  static TextStyle normalBoldTextStyle =
      TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold);

  static TextStyle mutedTextStyle = TextStyle(
      fontSize: 16,
      color: CustomColors.greyDarker,
      fontWeight: FontWeight.normal);

  static TextStyle mutedTextStyleLarge = TextStyle(
      fontSize: 20,
      color: CustomColors.greyDarker,
      fontWeight: FontWeight.normal);

  static TextStyle mutedSmallTextStyle = TextStyle(
      fontSize: 14,
      color: CustomColors.greyDarker,
      fontWeight: FontWeight.normal);

  static TextStyle mutedExtraSmallTextStyle = TextStyle(
      fontSize: 12,
      color: CustomColors.greyDarker,
      fontWeight: FontWeight.normal);

  static TextStyle smallTextStyle = TextStyle(
      fontSize: 14, color: Colors.black, fontWeight: FontWeight.normal);

  static TextStyle smallTextBoldStyle =
      TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold);

  static TextStyle normalGreenTextStyle = TextStyle(
      fontSize: 16, color: CustomColors.green, fontWeight: FontWeight.normal);

  static TextStyle smallerTextStyle = TextStyle(
      fontSize: 12, color: Colors.black, fontWeight: FontWeight.normal);

  static TextStyle smallHeaderTextStyle =
      TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold);

  static TextStyle dialogTitleTextStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 24);

  static TextStyle dialogMessageTextStyle =
      TextStyle(color: CustomColors.greyDarker, fontSize: 16);

  static TextStyle dialogGreenButtonStyle =
      TextStyle(color: CustomColors.green, fontSize: 20);

  static TextStyle dialogButtonStyle =
      TextStyle(color: Colors.black, fontSize: 20);

  static TextStyle dialogButtonStyleBold =
      TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold);

  static Decoration mutedTextFieldDecoration = BoxDecoration(
      color: CustomColors.greyDarkerIV,
      border: Border.all(color: CustomColors.lightGrey),
      borderRadius: BorderRadius.all(Radius.circular(8)));

  static InputDecoration textFieldDecoration(String hintText) {
    return InputDecoration(
        hintText: hintText,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: CustomColors.green),
            borderRadius: BorderRadius.circular(8)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: CustomColors.lightGrey),
            borderRadius: BorderRadius.circular(8)),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: CustomColors.lightGrey),
            borderRadius: BorderRadius.circular(8)));
  }

  static Decoration greyOutlineBorder = BoxDecoration(
      border: Border.all(color: CustomColors.lightGrey),
      borderRadius: BorderRadius.circular(8));

  static Decoration whiteCardDecoration = BoxDecoration(
      color: Colors.white, borderRadius: BorderRadius.circular(10));

  static InputDecoration searchTextFieldDecoration({hintText = "Search"}) =>
      InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.all(0),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: CustomColors.green)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: CustomColors.grey)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: CustomColors.grey)),
          prefixIcon: Icon(
            Icons.search,
            color: CustomColors.greyDarker,
          ));
}

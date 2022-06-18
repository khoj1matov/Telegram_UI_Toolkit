import 'package:flutter/material.dart';
import 'package:telegramuitoolkit/core/constants/color_const.dart';

class MyTextStyle {
  static TextStyle myTextStyle(
      {Color color = Colors.black, double fontSize = 14}) {
    return TextStyle(color: color, fontSize: fontSize);
  }

  static get contactsAppBarTitleStyle =>
      TextStyle(fontSize: 20, color: ColorConst.colorBlack);

  static get contactsListViewSubTitleStyle => TextStyle(
      fontSize: 15, color: ColorConst.colorBlack, fontWeight: FontWeight.w400);

  static get contactsLocationTitleStyle => TextStyle(
      fontSize: 20, color: ColorConst.color037EE5, fontWeight: FontWeight.w400);
}

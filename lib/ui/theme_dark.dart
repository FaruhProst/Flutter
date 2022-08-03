import 'package:flutter/material.dart';

const Color bluishColor = Color(0xFF4e5ae8);
const Color yellowColor = Color(0xFFFFB746);
const Color pinkColor = Color(0xFFff4667);
const primaryColor = bluishColor;
const Color darkGreyColor = Color(0xFF121212);
const Color darkHeaderColor = Color(0xFF424242);

class Themes {
  static final light = ThemeData(
    primaryColor: Colors.blue,
    brightness: Brightness.light,
  );

  static final dark = ThemeData(
    primaryColor: darkGreyColor,
    brightness: Brightness.dark,
  );
}

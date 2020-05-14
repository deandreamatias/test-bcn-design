import 'package:flutter/material.dart';

class Style {
  static const TextStyle TEXT_TAB =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const TextStyle TEXT_TITLE = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w500,
    color: ColorCustom.SOFT_BLACK,
  );
  static const TextStyle TEXT_DESCRIPTION = TextStyle(
    fontSize: 20,
    color: ColorCustom.SOFT_BLACK,
  );
  static const List<BoxShadow> LOW_SHADOW = <BoxShadow>[
    BoxShadow(
      color: ColorCustom.MEDIUM_GREY,
      blurRadius: 16.0,
      spreadRadius: 16.0,
    ),
    BoxShadow(
      color: ColorCustom.MEDIUM_GREY,
      blurRadius: 16.0,
      spreadRadius: 16.0,
    ),
    BoxShadow(
      color: ColorCustom.MEDIUM_GREY,
      blurRadius: 16.0,
      spreadRadius: 16.0,
    ),
    BoxShadow(
      color: ColorCustom.MEDIUM_GREY,
      blurRadius: 16.0,
      spreadRadius: 16.0,
    ),
  ];
}

class ColorCustom {
  static const Color SOFT_BLACK = Color(0xFF3E3F43);
  static const Color PURPLE = Color(0xFFD3A0ED);
  static const Color MEDIUM_GREY = Color(0xFFEEEEEE);
  static const Color LOW_GREY = Color(0xFFF3F3F5);
  static const Color BACKGROUND = Color(0xFFF9F9Fa);
}

class Space {
  static const EdgeInsets ALL_8 = EdgeInsets.all(8.0);
  static const EdgeInsets ALL_16 = EdgeInsets.all(16.0);
  static const EdgeInsets HORIZONTAL_16 = EdgeInsets.symmetric(horizontal: 16.0);
  static const EdgeInsets HORIZONTAL_8 = EdgeInsets.symmetric(horizontal: 8.0);
}

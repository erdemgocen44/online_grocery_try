import 'package:flutter/material.dart';

Text buildDefaultText(
    String baslik, double size, FontWeight kalinlik, Color renk) {
  return Text(
    baslik,
    style: TextStyle(
      fontSize: size,
      fontWeight: kalinlik,
      color: renk,
    ),
  );
}

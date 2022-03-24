import 'package:flutter/material.dart';

Text textCS(
  String text, {
  Color? color,
  double? size,
  FontWeight? fontWeight,
  TextAlign? textAlign,
}) {
  return Text(
    text,
    style: textStyle(
      color: color,
      size: size,
      weight: fontWeight,
    ),
    textAlign: textAlign ?? TextAlign.start,
  );
}

TextStyle textStyle({
  double? size,
  Color? color,
  FontWeight? weight,
}) {
  return TextStyle(
    fontSize: size ?? 14,
    color: color,
    fontWeight: weight ?? FontWeight.normal,
  );
}

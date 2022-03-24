import 'package:services/common_widget/hex_color.dart';
import 'package:flutter/material.dart';

MaterialColor primarySwatchColor = MaterialColor(
  mainColor.value,
  {
    50: mainColor,
    100: mainColor,
    200: mainColor,
    300: mainColor,
    400: mainColor,
    500: mainColor,
    600: mainColor,
    700: mainColor,
    800: mainColor,
    900: mainColor,
  },
);

Color mainColor = HexColor('#2C83FA');

Color buttonNotSelected = HexColor('#B2B2B2');

Color textFieldColor = HexColor('#F5F5F5');
Color textGreayColor = HexColor('#707070');

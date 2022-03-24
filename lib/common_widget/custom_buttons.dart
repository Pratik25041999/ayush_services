import 'package:services/common_widget/color.dart';
import 'package:services/common_widget/text.dart';
import 'package:flutter/material.dart';

import 'hex_color.dart';

TextButton customFilledButton(String text, bool clickable,
    {void Function()? onPressed}) {
  return TextButton(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
          clickable ? mainColor : buttonNotSelected),
      minimumSize: MaterialStateProperty.all<Size>(const Size(400, 50)),
      padding: null,
    ),
    onPressed: clickable ? onPressed : null,
    child: Text(text),
  );
}

TextButton customOutlineButton(String text,
    {void Function()? onPressed, Color? color}) {
  return TextButton(
    style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
      foregroundColor: MaterialStateProperty.all<Color>(mainColor),
      minimumSize: MaterialStateProperty.all<Size>(const Size(400, 50)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(color: HexColor('#E4E4E4')),
        ),
      ),
      splashFactory: InkSplash.splashFactory,
    ),
    onPressed: onPressed,
    child: Text(
      text,
      style: TextStyle(color: color),
    ),
  );
}

TextButton smallFilledButton(String text, bool clickable,
    {void Function()? onPressed}) {
  return TextButton(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
          clickable ? mainColor : textFieldColor),
      padding: null,
    ),
    onPressed: clickable ? onPressed : null,
    child: textCS(
      text,
      size: 11,
      color: Colors.white,
    ),
  );
}

TextButton smallOutlineButton(String text, {void Function()? onPressed}) {
  return TextButton(
    style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(color: HexColor('#E4E4E4')),
        ),
      ),
      splashFactory: InkSplash.splashFactory,
      alignment: AlignmentDirectional.center,
    ),
    onPressed: onPressed,
    child: textCS(
      text,
      size: 11,
      color: mainColor,
    ),
  );
}

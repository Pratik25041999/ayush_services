import 'package:flutter/material.dart';

import 'hex_color.dart';

BoxDecoration customDecoration() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: const BorderRadius.all(Radius.circular(8)),
    boxShadow: [
      BoxShadow(
        color: HexColor('#F2F2F2'),
        spreadRadius: 2,
        blurRadius: 3,
        offset: const Offset(0, 0), // changes position of shadow
      ),
    ],
  );
}

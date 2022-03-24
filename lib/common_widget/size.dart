import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

SizedBox height(double size) => SizedBox(height: size);

SizedBox width(double size) => SizedBox(width: size);

EdgeInsets edgeAll(double size) => EdgeInsets.all(size);

EdgeInsets vertical(double size) => EdgeInsets.symmetric(vertical: size);

EdgeInsets horizontal(double size) => EdgeInsets.symmetric(horizontal: size);

EdgeInsets edgeLRTB({double? l, double? r, double? t, double? b}) =>
    EdgeInsets.only(left: l ?? 0, right: r ?? 0, top: t ?? 0, bottom: b ?? 0);

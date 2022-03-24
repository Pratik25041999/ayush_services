import 'package:flutter/material.dart';

class CustomAssetImage extends StatelessWidget {
  final String image;
  final double? size;
  final Color? color;
  const CustomAssetImage({
    Key? key,
    required this.image,
    this.size,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: size ?? 20,
      height: size ?? 20,
      color: color,
    );
  }
}

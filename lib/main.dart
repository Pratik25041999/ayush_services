import 'package:services/Pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common_widget/color.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => GetMaterialApp(
        title: 'Ayush Sevices',
        theme: ThemeData(
          primarySwatch: primarySwatchColor,
          primaryColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Poppins',
          textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Poppins'),
          primaryTextTheme:
              Theme.of(context).textTheme.apply(fontFamily: 'Poppins'),
        ),
        home: const HomeScreen(),
      );
}

import 'package:services/all_in_one_page.dart';
import 'package:services/common_widget/container_shadow.dart';
import 'package:services/common_widget/size.dart';
import 'package:services/common_widget/text.dart';
import 'package:services/laptop_page.dart';
import 'package:services/services/call_back.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  final GlobalKey<ScaffoldState> dKey;
  final String title;
  final HideBottom hideBottom;
  final TabNavigation tabCallBack;
  final Function(dynamic data)? refreshHomePage;
  const HomePage({
    Key? key,
    required this.dKey,
    required this.title,
    required this.hideBottom,
    required this.tabCallBack,
    this.refreshHomePage,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: textCS('Ayush Services')),
      body: Center(
        child: Column(
          children: <Widget>[
            height(16),
            textCS(
              'Request For Repair',
              size: 20,
            ),
            height(16),
            Padding(
              padding: horizontal(16),
              child: Row(
                children: [
                  Flexible(
                    child: InkWell(
                      onTap: () => Get.to(() => const LaptopPage()),
                      child: Container(
                        decoration: customDecoration(),
                        padding: edgeAll(16),
                        child: Image.asset(
                          'assets/img/laptop.png',
                        ),
                      ),
                    ),
                  ),
                  width(16),
                  Flexible(
                    child: InkWell(
                      onTap: () => Get.to(() => const AllInOnePage()),
                      child: Container(
                        decoration: customDecoration(),
                        padding: edgeAll(16),
                        child: Image.asset(
                          'assets/img/all_in_one.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

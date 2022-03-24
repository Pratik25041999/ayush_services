import 'package:services/Pages/screens/home/device_information_page.dart';
import 'package:services/collection/list_collection.dart';
import 'package:services/common_widget/container_shadow.dart';
import 'package:services/common_widget/size.dart';
import 'package:services/common_widget/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common_widget/text.dart';

class LaptopPage extends StatefulWidget {
  const LaptopPage({Key? key}) : super(key: key);

  @override
  _LaptopPageState createState() => _LaptopPageState();
}

class _LaptopPageState extends State<LaptopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: textCS('Select Brand'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 1.3,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: brandNameCollection.length,
        padding: edgeAll(16),
        addRepaintBoundaries: false,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () => Get.to(() => DeviceInformationPage(
                  brandName: brandNameCollection[index]['name']!,
                )),
            child: Container(
              decoration: customDecoration(),
              child: Image.asset(
                brandNameCollection[index]['img']!,
                scale: 2,
              ),
            ),
          );
        },
      ),
    );
  }
}

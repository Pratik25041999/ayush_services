import 'package:services/common_widget/text.dart';
import 'package:flutter/material.dart';

class AllInOnePage extends StatefulWidget {
  const AllInOnePage({Key? key}) : super(key: key);

  @override
  _AllInOnePageState createState() => _AllInOnePageState();
}

class _AllInOnePageState extends State<AllInOnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: textCS('All In One'),
      ),
      body: Column(
        children: [textCS('Hi Suchit')],
      ),
    );
  }
}

import 'package:services/services/call_back.dart';
import 'package:flutter/material.dart';

class RequestPage extends StatefulWidget {
  final GlobalKey<ScaffoldState> dKey;
  final String title;
  final HideBottom hideBottom;
  final TabNavigation tabCallBack;
  final Function(dynamic data)? refreshHomePage;
  const RequestPage({
    Key? key,
    required this.dKey,
    required this.title,
    required this.hideBottom,
    required this.tabCallBack,
    this.refreshHomePage,
  }) : super(key: key);

  @override
  _RequestPageState createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

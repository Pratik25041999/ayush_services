import 'package:services/services/call_back.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final GlobalKey<ScaffoldState> dKey;
  final String title;
  final HideBottom hideBottom;
  final TabNavigation tabCallBack;
  final Function(dynamic data)? refreshHomePage;
  const ProfilePage({
    Key? key,
    required this.dKey,
    required this.title,
    required this.hideBottom,
    required this.tabCallBack,
    this.refreshHomePage,
  }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

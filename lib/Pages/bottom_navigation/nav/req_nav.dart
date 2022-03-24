import 'package:services/Pages/screens/request/request_page.dart';
import 'package:services/services/call_back.dart';
import 'package:flutter/material.dart';

import '../navigation_data.dart';

class RequestNav extends StatefulWidget {
  final GlobalKey<ScaffoldState> dKey;
  final HideBottom hideBottomNavigation;
  final TabNavigation tabCallBack;

  const RequestNav({
    Key? key,
    required this.dKey,
    required this.tabCallBack,
    required this.hideBottomNavigation,
  }) : super(key: key);

  @override
  _RequestNavState createState() => _RequestNavState();
}

class _RequestNavState extends State<RequestNav> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKeys[TabItem.request],
      initialRoute: '/',
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => RequestPage(
            dKey: widget.dKey,
            title: 'Session',
            hideBottom: widget.hideBottomNavigation,
            tabCallBack: widget.tabCallBack,
            refreshHomePage: (data) {},
          ),
        );
      },
    );
  }
}

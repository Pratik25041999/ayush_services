import 'package:services/Pages/screens/profile/profile_page.dart';
import 'package:services/services/call_back.dart';
import 'package:flutter/material.dart';

import '../navigation_data.dart';

class ProfileNav extends StatefulWidget {
  final GlobalKey<ScaffoldState> dKey;
  final HideBottom hideBottomNavigation;
  final TabNavigation tabCallBack;

  const ProfileNav({
    Key? key,
    required this.dKey,
    required this.tabCallBack,
    required this.hideBottomNavigation,
  }) : super(key: key);

  @override
  _ProfileNavState createState() => _ProfileNavState();
}

class _ProfileNavState extends State<ProfileNav> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKeys[TabItem.profile],
      initialRoute: '/',
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => ProfilePage(
            dKey: widget.dKey,
            title: 'Profile',
            hideBottom: widget.hideBottomNavigation,
            tabCallBack: widget.tabCallBack,
            refreshHomePage: (data) {},
          ),
        );
      },
    );
  }
}

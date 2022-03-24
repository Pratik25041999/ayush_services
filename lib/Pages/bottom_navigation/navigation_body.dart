import 'package:services/Pages/bottom_navigation/nav/req_nav.dart';
import 'package:services/services/call_back.dart';
import 'package:flutter/material.dart';

import 'nav/home_nav.dart';
import 'nav/profile_nav.dart';
import 'navigation_data.dart';

class MainBodyNavigation extends StatelessWidget {
  final TabItem currentTab;
  final GlobalKey<ScaffoldState> dKey;
  final HideBottom hideBottomNavigation;
  final TabNavigation tabCallBack;

  const MainBodyNavigation({
    Key? key,
    required this.currentTab,
    required this.dKey,
    required this.hideBottomNavigation,
    required this.tabCallBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return currentTab.index == 0
        ? HomeNav(
            dKey: dKey,
            hideBottomNavigation: hideBottomNavigation,
            tabCallBack: tabCallBack,
          )
        : currentTab.index == 1
            ? RequestNav(
                dKey: dKey,
                hideBottomNavigation: hideBottomNavigation,
                tabCallBack: tabCallBack,
              )
            : currentTab.index == 4
                ? ProfileNav(
                    dKey: dKey,
                    hideBottomNavigation: hideBottomNavigation,
                    tabCallBack: tabCallBack,
                  )
                : HomeNav(
                    dKey: dKey,
                    hideBottomNavigation: hideBottomNavigation,
                    tabCallBack: tabCallBack,
                  );
  }
}

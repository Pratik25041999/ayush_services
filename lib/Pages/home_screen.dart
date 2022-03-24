import 'package:services/Pages/bottom_navigation/navigation_data.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'bottom_navigation/bottom_navigation.dart';
import 'bottom_navigation/navigation_body.dart';

class HomeScreen extends StatefulWidget {
  final TabItem? tab;
  const HomeScreen({Key? key, this.tab}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> dKey = GlobalKey<ScaffoldState>();
  late TabItem _currentTab;
  late bool _isVisible;

  @override
  void initState() {
    _isVisible = true;
    _currentTab = widget.tab ?? TabItem.home;
    super.initState();
  }

  void _selectTab(TabItem tabItem) {
    if (tabItem == _currentTab) {
      navigatorKeys[tabItem]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _currentTab = tabItem;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await navigatorKeys[_currentTab]!.currentState!.maybePop();
        if (isFirstRouteInCurrentTab) {
          if (_currentTab != TabItem.home) {
            _selectTab(TabItem.home);
            return false;
          }
        }
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        key: dKey,
        body: MainBodyNavigation(
          currentTab: _currentTab,
          dKey: dKey,
          hideBottomNavigation: (value) {
            Future.delayed(Duration.zero, () async {
              _isVisible = value;
              setState(() {});
            });
          },
          tabCallBack: (tabItemVal) async {
            Future.delayed(Duration.zero, () async {
              _selectTab(tabItemVal);
              _isVisible = true;
              setState(() {});
            });
          },
        ),
        bottomNavigationBar: SafeArea(
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            height: _isVisible ? 60.0 : 0.0,
            child: _isVisible
                ? AnimatedContainer(
                    curve: Curves.bounceIn,
                    duration: const Duration(milliseconds: 200),
                    height: _isVisible ? 60.0 : 0.0,
                    child: _isVisible
                        ? BottomNavigation(
                            currentTab: _currentTab,
                            onSelectTab: _selectTab,
                          )
                        : const SizedBox(),
                  )
                : const SizedBox(),
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: deprecated_member_use

import 'package:services/collection/image_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'common.dart';
import 'navigation_data.dart';

class BottomNavigation extends StatefulWidget {
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  const BottomNavigation({
    Key? key,
    required this.currentTab,
    required this.onSelectTab,
  }) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabBar(
      backgroundColor: Colors.white,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: CustomAssetImage(
            image: bHome,
            color: Colors.grey,
          ),
          activeIcon: CustomAssetImage(
            image: bHome,
            color: Colors.blue,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: CustomAssetImage(
            image: brequest,
            color: Colors.grey,
          ),
          activeIcon: CustomAssetImage(
            image: brequest,
            color: Colors.blue,
          ),
         label: "",
        ),
        BottomNavigationBarItem(
          icon: CustomAssetImage(
            image: bProfile,
            color: Colors.grey,
          ),
          activeIcon: CustomAssetImage(
            image: bProfile,
            color: Colors.blue,
          ),
          label: "",
        ),
      ],
      currentIndex: widget.currentTab.index,
      onTap: (index) => widget.onSelectTab(TabItem.values[index]),
    );
  }
}

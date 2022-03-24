import 'package:flutter/material.dart';

Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys = {
  TabItem.home: GlobalKey<NavigatorState>(),
  TabItem.request: GlobalKey<NavigatorState>(),
  TabItem.profile: GlobalKey<NavigatorState>(),
};

enum TabItem { home, request, profile }

Map<TabItem, String> tabName = {
  TabItem.home: 'Home',
  TabItem.request: 'Request',
  TabItem.profile: 'Profile',
};

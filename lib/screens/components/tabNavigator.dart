import 'package:flutter/material.dart';
import 'package:uznay_sysert/screens/about.dart';
import 'package:uznay_sysert/screens/home.dart';
import 'package:uznay_sysert/screens/map.dart';
import 'package:uznay_sysert/screens/routes.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String home = '/home';
  static const String map = '/map';
  static const String routes = '/routes';
  static const String about = '/about';
}

class TabNavigator extends StatelessWidget {
  TabNavigator({this.navigatorKey, this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final String tabItem;

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (tabItem == "home")
      child = HomeScreen();
    else if (tabItem == "map")
      child = MapScreen();
    else if (tabItem == "routes")
      child = RoutesScreen();
    else if (tabItem == "about") child = AboutScreen();

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) => child);
      },
    );
  }
}

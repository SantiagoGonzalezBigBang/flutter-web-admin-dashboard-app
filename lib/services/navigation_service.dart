import 'package:flutter/material.dart';

class NavigationService {

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static pushNamed(String routeName) {
    return navigatorKey.currentState?.pushNamed(routeName);
  }

  static pushReplacementNamed(String routeName) {
    return navigatorKey.currentState?.pushReplacementNamed(routeName);
  }

}
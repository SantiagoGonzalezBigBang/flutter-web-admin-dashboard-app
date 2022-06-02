import 'package:flutter/material.dart';

class SidebarProvider extends ChangeNotifier {

  static late AnimationController animationController;
  static bool isOpen = false;
  
  String _currentRouteName = '';

  String get currentRouteName => _currentRouteName;

  void setCurrentRouteName(String routeName) {
    _currentRouteName = routeName;
    Future.delayed(const Duration(milliseconds: 100), () {
      notifyListeners();
    });
  }

  static Animation<double> movementAnimation = Tween<double>(
    begin: -200, 
    end: 0.0
  ).animate(CurvedAnimation(
    parent: animationController, 
    curve: Curves.easeInOut
  ));

  static Animation<double> opacityAnimation = Tween<double>(
    begin: 0.0, 
    end: 1.0
  ).animate(CurvedAnimation(
    parent: animationController, 
    curve: Curves.easeInOut
  ));

  static void openMenu() {
    isOpen = true;
    animationController.forward();
  }

  static void closeMenu() {
    isOpen = false;
    animationController.reverse();
  }

  static void toggleMenu() {
    isOpen ? closeMenu() : openMenu();
  }

}
import 'package:admin_dashboard/routes/routes.dart';
import 'package:admin_dashboard/services/services.dart';
import 'package:flutter/material.dart';

enum AuthStatus {
  cheking,
  authenticated,
  notAuthenticated
}

class AuthProvider extends ChangeNotifier {

  AuthProvider() {
    isAuthenticated();
  }

  String? _token;
  AuthStatus authStatus = AuthStatus.cheking;

  login({required String email, required String password}) {
    //* Http Post 
    
    //* Storage JWT
    _token = 'fsdjfsdjkfndsjjfdsn';
    LocalStorage.sharedPreferences.setString('token', _token!);

    //* Navigate to Dashboard
    authStatus = AuthStatus.authenticated;
    notifyListeners();

    NavigationService.pushReplacementNamed(Routes.dashboardRoute);
  }

  register({
    required String name,
    required String email,
    required String password,
  }) {
    //* Http Post 

    //* Storage JWT
    _token = 'fsdjfsdjkfndsjjfdsn';

    //* Navigate to Dashboard

    notifyListeners();
  }

  Future<bool> isAuthenticated() async {
    final token = LocalStorage.sharedPreferences.getString('token');
    if (token == null) {
      authStatus = AuthStatus.notAuthenticated;
      notifyListeners();
      return false;
    }

    //* Verify token with the backend
    await Future.delayed(const Duration(milliseconds: 1000));

    authStatus = AuthStatus.authenticated;
    notifyListeners();
    return true;
  }

}
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:admin_dashboard/routes/routes.dart';
import 'package:admin_dashboard/providers/providers.dart';
import 'package:admin_dashboard/services/services.dart';
import 'package:admin_dashboard/ui/layouts/layouts.dart';

void main() async {
  await LocalStorage.configureSharedPreferences();
  Routes.configureRoutes();
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (context) => AuthProvider()
        )
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Dashboard',
      initialRoute: '/',
      onGenerateRoute: Routes.fluroRouter.generator,
      navigatorKey: NavigationService.navigatorKey,
      builder: (context, child) {  
        if (child == null) return const SizedBox();

        final authProvider = Provider.of<AuthProvider>(context);

        switch (authProvider.authStatus) {
          case AuthStatus.cheking:
            return const SplashLayout();
          case AuthStatus.authenticated:
            return DashboardLayout(child: child);
          case AuthStatus.notAuthenticated:
            return AuthLayout(child: child);
        }
        
      },
      theme: ThemeData.light().copyWith(
        scrollbarTheme: const ScrollbarThemeData().copyWith(
          thumbColor: MaterialStateProperty.all(Colors.grey.withOpacity(0.5))
        ),
      ),
    );
  }
}
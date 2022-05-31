import 'package:flutter/material.dart';

import 'package:admin_dashboard/routes/routes.dart';

import 'package:admin_dashboard/ui/layouts/layouts.dart';

void main() {
  Routes.configureRoutes();
  runApp(const MyApp());
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
      builder: (context, child) {
        if (child != null) return AuthLayout(child: child);
        return const SizedBox();
      },
      theme: ThemeData.light().copyWith(
        scrollbarTheme: const ScrollbarThemeData().copyWith(
          thumbColor: MaterialStateProperty.all(Colors.grey.withOpacity(0.5))
        ),        
      ),
    );
  }
}
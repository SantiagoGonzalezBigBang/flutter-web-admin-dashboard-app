part of 'routes.dart';

class DashboardHandlers {

  static Handler dashboardHandler = Handler(
    handlerFunc: (context, parameters) {
      if (context == null) return null;

      final authProvider = Provider.of<AuthProvider>(context);

      if (authProvider.authStatus == AuthStatus.authenticated) return const DashboardView();
      
      return const LoginView();
    },
  );

}
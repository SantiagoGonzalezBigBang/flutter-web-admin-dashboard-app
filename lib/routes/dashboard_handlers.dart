part of 'routes.dart';

class DashboardHandlers {

  static Handler dashboardHandler = Handler(
    handlerFunc: (context, parameters) {
      if (context == null) return null;

      final authProvider = Provider.of<AuthProvider>(context);
      Provider.of<SidebarProvider>(context, listen: false).setCurrentRouteName(Routes.dashboardRoute);

      if (authProvider.authStatus == AuthStatus.authenticated) return const DashboardView();
      
      return const LoginView();
    },
  );

  static Handler iconsHandler = Handler(
    handlerFunc: (context, parameters) {
      if (context == null) return null;

      final authProvider = Provider.of<AuthProvider>(context);
      Provider.of<SidebarProvider>(context, listen: false).setCurrentRouteName(Routes.iconsRoute);

      if (authProvider.authStatus == AuthStatus.authenticated) return const IconsView();
      
      return const LoginView();
    },
  );

  static Handler blankHandler = Handler(
    handlerFunc: (context, parameters) {
      if (context == null) return null;

      final authProvider = Provider.of<AuthProvider>(context);
      Provider.of<SidebarProvider>(context, listen: false).setCurrentRouteName(Routes.blankRoute);

      if (authProvider.authStatus == AuthStatus.authenticated) return const BlankView();
      
      return const LoginView();
    },
  );

}
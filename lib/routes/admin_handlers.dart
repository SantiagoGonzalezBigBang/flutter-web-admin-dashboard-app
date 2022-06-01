part of 'routes.dart';

class AdminHandlers {

  static Handler loginHandler = Handler(
    handlerFunc: (context, parameters) {
      if (context == null) return null;

      final authProvider = Provider.of<AuthProvider>(context);

      if (authProvider.authStatus == AuthStatus.notAuthenticated) return const LoginView();

      return const DashboardView();
    },
  );

  static Handler registerHandler = Handler(
    handlerFunc: (context, parameters) {
      if (context == null) return null;

      final authProvider = Provider.of<AuthProvider>(context);

      if (authProvider.authStatus == AuthStatus.notAuthenticated) return const RegisterView();
      
      return const DashboardView();
    },
  );

}
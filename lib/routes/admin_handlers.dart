part of 'routes.dart';

class AdminHandlers {

  static Handler loginHandler = Handler(
    handlerFunc: (context, parameters) {
      return const LoginView();
    },
  );

  static Handler registerHandler = Handler(
    handlerFunc: (context, parameters) {
      return const RegisterView();
    },
  );

}
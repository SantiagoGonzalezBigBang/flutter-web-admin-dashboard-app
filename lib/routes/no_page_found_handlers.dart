part of 'routes.dart';

class NoPageFoundHandlers {

  static Handler noPageFoundHandler = Handler(
    handlerFunc: (context, parameters) {
      return const NoPageFoundView();
    },
  );

}
part of 'routes.dart';

class NoPageFoundHandlers {

  static Handler noPageFoundHandler = Handler(
    handlerFunc: (context, parameters) {
      if (context == null) return null;
      Provider.of<SidebarProvider>(context, listen: false).setCurrentRouteName('/notfoundpage');
      return const NoPageFoundView();
    },
  );

}
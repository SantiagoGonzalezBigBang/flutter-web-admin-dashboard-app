import 'package:fluro/fluro.dart';

import 'package:provider/provider.dart';

import 'package:admin_dashboard/providers/providers.dart';
import 'package:admin_dashboard/design/views/views.dart';

part 'admin_handlers.dart';
part 'dashboard_handlers.dart';
part 'no_page_found_handlers.dart';

class Routes {

  static final FluroRouter fluroRouter = FluroRouter();

  static String rootRoute = '/';

  //* Auth Routes
  static String loginRoute    = '/auth/login';
  static String registerRoute = '/auth/register';

  //* Dashboard Routes
  static String dashboardRoute = '/dashboard';
  static String iconsRoute     = '/dashboard/icons';
  static String blankRoute     = '/dashboard/blank';



  //* Configure Routes
  static void configureRoutes() {
    //* No Page Found Routes
    fluroRouter.notFoundHandler = NoPageFoundHandlers.noPageFoundHandler;
    
    //* Root Routes
    fluroRouter.define(rootRoute, handler: AdminHandlers.loginHandler, transitionType: TransitionType.none);

    //* Auth Routes
    fluroRouter.define(loginRoute   , handler: AdminHandlers.loginHandler, transitionType: TransitionType.none);
    fluroRouter.define(registerRoute, handler: AdminHandlers.registerHandler, transitionType: TransitionType.none);

    //* Dashboard Routes
    fluroRouter.define(dashboardRoute, handler: DashboardHandlers.dashboardHandler, transitionType: TransitionType.fadeIn);
    fluroRouter.define(iconsRoute    , handler: DashboardHandlers.iconsHandler    , transitionType: TransitionType.fadeIn);
    fluroRouter.define(blankRoute    , handler: DashboardHandlers.blankHandler    , transitionType: TransitionType.fadeIn);
  }


}
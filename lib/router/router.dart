import 'package:bases_web/router/route_handlers.dart';
import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/foundation.dart';

import '../ui/views/not_found_view.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  // routes
  static void configureRoutes() {
    router.define(
      "/",
      handler: counterHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      "/stateful",
      handler: counterHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      "/stateful/:base",
      handler: counterHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      "/provider",
      handler: providerHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      "/dashboard/users/:userid/:roleid",
      handler: dashboardUsersHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.notFoundHandler = notFoundHandler;
  }
}

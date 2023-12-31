import 'package:bases_web/ui/pages/counter_page.dart';
import 'package:bases_web/ui/pages/counter_provider_page.dart';
import 'package:bases_web/ui/pages/page404.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/stateful":
        return _fadeRoute(const CounterPage(), "/stateful");
      case "/provider":
        return _fadeRoute(const CounterProviderPage(), "/provider");
      default:
        // return MaterialPageRoute(
        //   settings: const RouteSettings(name: "/error"),
        //   builder: (_) => const Page404(),
        // );
        return _fadeRoute(const Page404(), "/error");
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      pageBuilder: (_, __, ___) => child,
      transitionDuration: const Duration(milliseconds: 200),
      transitionsBuilder: (_, animation, __, ___) => (kIsWeb)
          ? FadeTransition(
              opacity: animation,
              child: child,
            )
          : CupertinoPageTransition(
              primaryRouteAnimation: animation,
              secondaryRouteAnimation: __,
              linearTransition: true,
              child: child,
            ),
    );
  }
}

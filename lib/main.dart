// import 'package:bases_web/ui/pages/counter_page.dart';
// import 'package:bases_web/ui/pages/counter_provider_page.dart';
import 'package:bases_web/locator.dart';
import 'package:bases_web/services/navigator_service.dart';
import 'package:bases_web/ui/layout/main_layout_page.dart';
import 'package:flutter/material.dart';

import 'router/route_generator.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'My App',
      initialRoute: "/stateful",
      // routes: {
      //   "/stateful": (_) => const CounterPage(),
      //   "/provider": (_) => const CounterProviderPage(),
      // },
      // onGenerateRoute: (settings) => RouterGenerator.generateRoute(settings),
      onGenerateRoute: RouteGenerator
          .generateRoute, // el producto de esto pasa por el builder
      navigatorKey: locator<NavigatorService>().navigatorKey,
      builder: (_, child) => MainLayoutPage(
        child: child!,
      ),
    );
  }
}

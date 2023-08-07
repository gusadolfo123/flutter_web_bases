// handlers
import 'package:fluro/fluro.dart';
import 'package:flutter/foundation.dart';

import '../ui/views/counter_provider_view.dart';
import '../ui/views/counter_view.dart';
import '../ui/views/not_found_view.dart';

final Handler counterHandler = Handler(
  handlerFunc: (context, params) {
    String baseParam = params['base']?.first ?? "5";

    return CounterView(
      base: baseParam,
    );
  },
);

final Handler providerHandler = Handler(
  handlerFunc: (context, params) {
    String baseParam = params['q']?.first ?? "35";

    return CounterProviderView(
      base: baseParam,
    );
  },
);

final Handler notFoundHandler = Handler(
  handlerFunc: (context, params) {
    return const NotFoundView();
  },
);

final Handler dashboardUsersHandler = Handler(
  handlerFunc: (context, params) {
    if (kDebugMode) {
      print(params);
    }
    return const NotFoundView();
  },
);

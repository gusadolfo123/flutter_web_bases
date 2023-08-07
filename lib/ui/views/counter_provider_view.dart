import 'package:bases_web/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../shared/custom_flat_button.dart';

class CounterProviderView extends StatelessWidget {
  final String base;

  const CounterProviderView({super.key, required this.base});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(base),
      child: _CounterProviderPageBody(),
    );
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        const Text(
          "Contador Provider",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(192, 192, 192, 1),
          ),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'Counter: ${counterProvider.counter}',
            style: const TextStyle(
              fontSize: 80,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(192, 192, 192, 1),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
              text: "Decrementar",
              onPressed: () => counterProvider.decrement(),
            ),
            const SizedBox(width: 10),
            CustomFlatButton(
              onPressed: () => counterProvider.increment(),
              text: "Incrementar",
            ),
          ],
        ),
        const Spacer(),
      ],
    );
  }
}

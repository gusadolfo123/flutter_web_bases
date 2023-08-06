import 'package:flutter/material.dart';

import '../shared/custom_flat_button.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const Text(
            "Contador Staful",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(192, 192, 192, 1),
            ),
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              'Counter: $counter',
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
                onPressed: () => setState(() => counter--),
              ),
              const SizedBox(width: 10),
              CustomFlatButton(
                onPressed: () => setState(() => counter++),
                text: "Incrementar",
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }

  void _onPreseed() {
    setState(() {
      counter += 1;
    });
  }
}

import 'package:flutter/material.dart';

import '../shared/custom_flat_button.dart';

class CounterView extends StatefulWidget {
  final String base;

  const CounterView({super.key, required this.base});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 5;

  @override
  void initState() {
    super.initState();

    if (int.tryParse(widget.base) != null) {
      counter = int.parse(widget.base);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}

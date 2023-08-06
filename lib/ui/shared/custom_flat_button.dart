import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPressed;

  const CustomFlatButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = Colors.redAccent,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPressed(),
      style: TextButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 255, 61, 7),
        backgroundColor: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          text,
          style: const TextStyle(
            color: Color.fromRGBO(241, 241, 241, 1),
          ),
        ),
      ),
    );
  }
}

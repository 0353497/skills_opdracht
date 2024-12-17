import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  final String text;
  final String href;
  final double? width;

  const BigButton({
    super.key,
    required this.text,
    required this.href,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: FilledButton(
        onPressed: () {
          Navigator.pushNamed(context, href);
        },
        style: const ButtonStyle(
          elevation: WidgetStatePropertyAll(10),
          padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(vertical: 30, horizontal: 60),
          ),
          backgroundColor: WidgetStatePropertyAll(Colors.blue),
        ),
        child: Text(text, style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}

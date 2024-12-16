import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  final String text;
  final String href;

  const BigButton({
    super.key,
    required this.text,
    required this.href,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        Navigator.pushNamed(context, href);
      },
      child: Text(text),
      style: ButtonStyle(
          elevation: WidgetStatePropertyAll(10),
          padding: WidgetStatePropertyAll(
              EdgeInsets.symmetric(vertical: 30, horizontal: 60)),
          backgroundColor: WidgetStatePropertyAll(Colors.blue)),
    );
  }
}

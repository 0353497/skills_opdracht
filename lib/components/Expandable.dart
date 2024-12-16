import 'package:flutter/material.dart';

class Expandable extends StatelessWidget {
  final String question;
  final String subtitle;
  final String answer;

  const Expandable({
    super.key,
    required this.question,
    required this.subtitle,
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(question),
      subtitle: Text(subtitle),
      children: <Widget>[
        ListTile(title: Text(answer)),
      ],
      collapsedShape: Border(bottom: BorderSide(color: Colors.black)),
    );
  }
}

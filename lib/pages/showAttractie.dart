import 'package:flutter/material.dart';
import 'package:skills_opdracht/components/bigButton.dart';

class Showattractie extends StatelessWidget {
  final int id;
  const Showattractie({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Text('Attracties pagina $id',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
            const BigButton(text: 'To Home', href: '/'),
          ],
        ),
      ),
    );
  }
}

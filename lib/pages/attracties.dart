import 'package:flutter/material.dart';
import 'package:skills_opdracht/components/bigButton.dart';

class Attracties extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Text('Attracties pagina',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            BigButton(text: 'To Home', href: '/'),
          ],
        ),
      ),
    );
  }
}

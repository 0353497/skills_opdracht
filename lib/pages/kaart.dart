import 'package:flutter/material.dart';
import 'package:skills_opdracht/components/bigButton.dart';
import 'package:skills_opdracht/components/ownCard.dart';

class Kaart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OwnCard(
                url: 'lib/assets/Amsterdam.png',
                title: 'Kaart',
                subtitle: 'de kaart van Amsterdam',
                description: 'Dit is de kaart van Amsterdam'),
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

import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              '750 Jaar Amsterdam',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
            Text(
              'XXX',
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100,
            ),
            OwnCard(
              url:
                  'https://images.unsplash.com/photo-1731370963500-b836d108f7c9?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              title: 'Montelbaanstoren',
              subtitle: 'Een geweldige toren',
              description:
                  'De Montelbaanstoren is een toren in Amsterdam, gelegen aan de Oudeschans bij de Lastage, een voormalige haven in het oosten van de oude binnenstad.',
            ),
            SizedBox(
              height: 20,
            ),
            OwnCard(
                url:
                    'https://images.unsplash.com/photo-1731370963500-b836d108f7c9?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                title: 'Rijksmuseum',
                subtitle: 'Een bijzondere ervaring',
                description:
                    'Het Rijksmuseum is een Nederlands rijksmuseum voor kunst en geschiedenis in Amsterdam.'),
            SizedBox(
              height: 20,
            ),
            OwnCard(
                url:
                    'https://images.unsplash.com/photo-1731370963500-b836d108f7c9?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                title: 'Anne Frank Huis',
                subtitle: 'Een indrukwekkende ervaring',
                description: 'Het Anne Frank Huis is een museum in Amsterdam.'),
            SizedBox(
              height: 20,
            ),
            //add 3 big buttons
            BigButton(text: 'Kaart'),
            SizedBox(
              height: 20,
            ),
            BigButton(text: 'Hulp'),
            SizedBox(
              height: 20,
            ),
            BigButton(text: 'Attracties'),
          ],
        ),
      ),
    ));
  }
}

class BigButton extends StatelessWidget {
  const BigButton({
    super.key,
    required String text,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      child: const Text('Kaart'),
      style: ButtonStyle(
          elevation: WidgetStatePropertyAll(10),
          padding: WidgetStatePropertyAll(
              EdgeInsets.symmetric(vertical: 30, horizontal: 60)),
          backgroundColor: WidgetStatePropertyAll(Colors.blue)),
    );
  }
}

class OwnCard extends StatelessWidget {
  final String url;
  final String title;
  final String subtitle;
  final String description;

  const OwnCard({
    super.key,
    required this.url,
    required this.title,
    required this.subtitle,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20), // Rounded corners
      ),
      child: Padding(
        padding: const EdgeInsets.all(
            16.0), // Adjust the value for padding around the content
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(url),
            Text(
              title,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              subtitle,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              description,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

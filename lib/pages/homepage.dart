import 'package:skills_opdracht/components/bigButton.dart';
import 'package:skills_opdracht/components/ownCard.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
              routeUrl: '/attractie/1',
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
            BigButton(
              text: 'Kaart',
              href: '/kaart',
            ),
            SizedBox(
              height: 20,
            ),
            BigButton(
              text: 'Hulp',
              href: '/hulp',
            ),
            SizedBox(
              height: 20,
            ),
            BigButton(
              text: 'Attracties',
              href: '/attracties',
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:skills_opdracht/components/bigButton.dart';
import 'package:skills_opdracht/components/ownCard.dart';

class Kaart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(187, 222, 251, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OwnCard(
                url: 'lib/assets/Amsterdam.png',
                title: 'Kaart',
                subtitle: 'de kaart van Amsterdam',
              description: 'Dit is de kaart van Amsterdam',
              routeUrl:
                  'https://www.google.com/maps/place/Amsterdam/@52.354551,4.7391541,11z/data=!3m1!4b1!4m6!3m5!1s0x47c63fb5949a7755:0x6600fd4cb7c0af8d!8m2!3d52.3675734!4d4.9041389!16zL20vMGszcA?entry=ttu&g_ep=EgoyMDI0MTIxMS4wIKXMDSoASAFQAw%3D%3D',
            ),
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

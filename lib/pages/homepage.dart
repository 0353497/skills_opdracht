import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:skills_opdracht/components/bigButton.dart';
import 'package:skills_opdracht/components/ownCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> attracties = [];

  @override
  void initState() {
    super.initState();
    _loadAttracties();
  }

  Future<void> _loadAttracties() async {
    try {
      // Load JSON data from assets
      String jsonString =
          await rootBundle.loadString('lib/assets/kaarten.json');
      List<dynamic> jsonData = jsonDecode(jsonString);

      // Update the state with the data
      setState(() {
        attracties = jsonData;
      });
    } catch (e) {
      setState(() {
        attracties = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            const Text(
              '750 Jaar Amsterdam',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
            const Text(
              'XXX',
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 100,
            ),
            Column(
              children: [
                if (attracties.isNotEmpty)
                  ...List.generate(3, (i) {
                    return Column(
                      children: [
            OwnCard(
                          url: attracties[i]['photo'] ?? '',
                          title: attracties[i]['title'] ?? '',
                          subtitle: attracties[i]['subtitle'] ?? '',
                          description: attracties[i]['description'] ?? '',
                          routeUrl: '/attractie/${attracties[i]['id']}',
            ),
                        SizedBox(height: 20),
                      ],
                    );
                  }),
                if (attracties.isEmpty) CircularProgressIndicator(),
              ],
            ),
            const BigButton(
              text: 'Kaart',
              href: '/kaart',
            ),
            const SizedBox(
              height: 20,
            ),
            const BigButton(
              text: 'Hulp',
              href: '/hulp',
            ),
            const SizedBox(
              height: 20,
            ),
            const BigButton(
              text: 'Attracties',
              href: '/attracties',
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    ));
  }
}

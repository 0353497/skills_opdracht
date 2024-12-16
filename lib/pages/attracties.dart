import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:skills_opdracht/components/bigButton.dart';
import 'package:skills_opdracht/components/horizontalCard.dart';
import 'package:skills_opdracht/components/ownCard.dart';

class Attracties extends StatefulWidget {
  @override
  _AttractiesState createState() => _AttractiesState();
}

class _AttractiesState extends State<Attracties> {
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
      backgroundColor: Colors.blue[100],
      body: Column(
        
        children: [
          const SizedBox(height: 60),
          const Text(
            'Attracties pagina',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: attracties.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: attracties.length,
                    itemBuilder: (context, index) {
                      final item = attracties[index];
                      return index < 3
                          ? OwnCard(
                              url: item['photo'],
                              title: item['title'],
                              subtitle: item['subtitle'],
                              description: item['description'],
                              routeUrl: '/attractie/${item['id']}',
                            )
                          : Horizontalcard(
                              text: item['title'],
                              subtitle: item['subtitle'],
                              image: item['photo'],
                              linkUrl: '/attractie/${item['id']}',
                            );
                    },
                  ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: BigButton(text: 'To Home', href: '/'),
          ),
        ],
      ),
    );
  }
}

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:skills_opdracht/components/bigButton.dart';
import 'package:skills_opdracht/components/ownCard.dart';


class Showattractie extends StatefulWidget {
  final int id;
  Showattractie({Key? key, required this.id}) : super(key: key);

  @override
  _ShowattractieState createState() => _ShowattractieState();
}

class _ShowattractieState extends State<Showattractie> {
  dynamic attractie;

  @override
  void initState() {
    super.initState();
    _loadAttractie();
  }

  Future<void> _loadAttractie() async {
    try {
      String jsonString =
          await rootBundle.loadString('lib/assets/kaarten.json');
      List<dynamic> jsonData = jsonDecode(jsonString);

      setState(() {
        //minus 1 because the id starts at 1 and the index at 0
        attractie = jsonData[widget.id - 1];
      });
    } catch (e) {
      setState(() {
        attractie = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            attractie != null
                ? OwnCard(
                    url: attractie['photo'] ?? 'https://placehold.co/600x400',
                    title: attractie['title'] ?? 'No title',
                    subtitle: attractie['subtitle'] ?? 'No subtitle',
                    description: attractie['description'] ?? 'No description',
                  )
                : const CircularProgressIndicator(),
            const SizedBox(height: 20),
            const BigButton(text: 'To Home', href: '/'),
          ],
        ),
      ),
    );
  }
}

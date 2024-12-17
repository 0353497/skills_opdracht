import 'package:flutter/material.dart';
import 'package:skills_opdracht/components/bigButton.dart';
import 'package:skills_opdracht/components/Expandable.dart';

class Hulp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text('FAQ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                shrinkWrap:
                    true, // To make the ListView take only as much space as needed
                physics:
                    const NeverScrollableScrollPhysics(), // Disable scrolling as it's already inside SingleChildScrollView
                itemCount: 13,
                itemBuilder: (context, index) {
                  if (index < 3) {
                    // Static widgets
                    return Expandable(
                      question: 'Vraag ${index + 1}',
                      subtitle: 'Subtitle ${index + 1}',
                      answer: 'Antwoord ${index + 1}',
                    );
                  } else {
                    // Dynamic widgets
                    return Expandable(
                      question: 'Vraag ${index}',
                      subtitle: 'Subtitle $index',
                      answer: 'Antwoord $index',
                    );
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const BigButton(text: 'To Home', href: '/'),
            ],
          ),
        ),
      ),
    );
  }
}

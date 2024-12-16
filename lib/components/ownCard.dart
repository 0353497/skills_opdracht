import 'package:flutter/material.dart';

class OwnCard extends StatelessWidget {
  final String url;
  final String title;
  final String subtitle;
  final String description;
  final String? routeUrl;

  const OwnCard({
    super.key,
    required this.url,
    required this.title,
    required this.subtitle,
    required this.description,
    this.routeUrl,
  });

  void _handleTap(BuildContext context) async {
    if (routeUrl != null) {
      // Check if it's an external URL or an internal route
      if (Uri.tryParse(routeUrl!)?.hasAbsolutePath == true) {
        // Launch external URL
      } else {
        // Handle internal route navigation
        Navigator.pushNamed(context, routeUrl!);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _handleTap(context),
      child: Card(
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
              if (Uri.tryParse(url)?.hasAbsolutePath == true)
                Image.network(
                  url,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
                )
              else
                Image.asset(
                  url,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
                ),
              Text(
                title,
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                subtitle,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                description,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

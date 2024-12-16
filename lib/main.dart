import 'package:flutter/material.dart';
import 'pages/attracties.dart';
import 'pages/hulp.dart';
import 'pages/homepage.dart';
import 'pages/kaart.dart';
import 'pages/showAttractie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      onGenerateRoute: (settings) {
        // Handle named routes
        final Uri uri = Uri.parse(settings.name!);

        if (uri.pathSegments.isNotEmpty &&
            uri.pathSegments.first == 'attractie') {
          // Extract the 'id' parameter from the route
          final id = uri.pathSegments.length > 1 ? uri.pathSegments[1] : null;

          // Ensure 'id' is not null before navigating
          if (id != null) {
            return MaterialPageRoute(
              builder: (context) => Showattractie(id: int.parse(id)),
            );
          }
        }

        // Default named routes
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => HomePage());
          case '/kaart':
            return MaterialPageRoute(builder: (context) => Kaart());
          case '/attracties':
            return MaterialPageRoute(builder: (context) => Attracties());
          case '/hulp':
            return MaterialPageRoute(builder: (context) => Hulp());
        }

        // Unknown route
        return MaterialPageRoute(builder: (context) => const NotFoundPage());
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Not Found'),
      ),
      body: const Center(
        child: Text('404: Page not found'),
      ),
    );
  }
}

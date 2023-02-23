import 'package:flutter/material.dart';
import 'landing_page.dart'; // Import the LandingPage widget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: const LandingPage(), // Set the home screen to the LandingPage widget
    );
  }
}
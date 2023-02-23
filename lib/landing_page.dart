import 'package:flutter/material.dart';
import 'custom_button.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/wedding_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Welcome to our Wedding App!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Get all the information about our wedding at your fingertips.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 32.0),
              CustomButton(
                text: 'View Programme',
                onTap: () {
                  // Navigate to Programme Page
                },
              ),
              CustomButton(
                text: 'Venue Information',
                onTap: () {
                  // Navigate to Venue Page
                },
              ),
              CustomButton(
                text: 'Accommodation Information',
                onTap: () {
                  // Navigate to Accommodation Page
                },
              ),
              CustomButton(
                text: 'Bridal Party Contact Information',
                onTap: () {
                  // Navigate to Bridal Party Page
                },
              ),
              CustomButton(
                text: 'Monetary Gifts',
                onTap: () {
                  // Navigate to Gifts Page
                },
              ),
              CustomButton(
                text: 'Cloud Storage Link/QR code',
                onTap: () {
                  // Navigate to Cloud Storage Page
                },
              ),
              CustomButton(
                text: 'E-Greeting Card',
                onTap: () {
                  // Navigate to Greeting Card Page
                },
              ),
              CustomButton(
                text: 'About the Couple',
                onTap: () {
                  // Navigate to About Page
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

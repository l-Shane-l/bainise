import 'package:flutter/material.dart';

class CloudStoragePage extends StatelessWidget {
  const CloudStoragePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cloud Storage'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/cloud_storage_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 24.0),
            const Text(
              'Welcome to our Cloud Storage page!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Share your photos and videos from the wedding with us and other guests.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.pink,
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                minimumSize: const Size(double.infinity, 56.0),
              ),
              onPressed: () {
                // Add function to navigate to cloud storage website or app
              },
              child: const Text(
                'Go to Cloud Storage',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

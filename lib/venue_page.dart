import 'package:flutter/material.dart';
import 'custom_button.dart';

class VenuePage extends StatelessWidget {
  const VenuePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Venue Information'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'assets/images/venue.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200.0,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'The Grand Hall',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  '123 Main Street',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Anytown, USA',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'The Grand Hall is a beautiful venue located in the heart of Anytown, USA. With its stunning architecture and world-class amenities, it is the perfect place for a wedding. Whether you are planning an intimate ceremony or a lavish reception, the Grand Hall has everything you need to make your special day unforgettable.',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 32.0),
                CustomButton(
                  text: 'View Map',
                  onTap: () {
                    // Navigate to Map Page
                  },
                ),
                CustomButton(
                  text: 'Contact Venue',
                  onTap: () {
                    // Navigate to Contact Page
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

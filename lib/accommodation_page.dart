import 'package:flutter/material.dart';

class AccommodationPage extends StatelessWidget {
  const AccommodationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accommodation'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Our recommended hotels:',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            _buildHotel(
              name: 'Hotel A',
              description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              address: '123 Main Street, City, State',
              phoneNumber: '+1 123-456-7890',
            ),
            _buildHotel(
              name: 'Hotel B',
              description: 'Pellentesque in lacus a velit cursus auctor quis ac nulla.',
              address: '456 Second Street, City, State',
              phoneNumber: '+1 234-567-8901',
            ),
            _buildHotel(
              name: 'Hotel C',
              description: 'Fusce eget turpis nec mauris fringilla volutpat et eu velit.',
              address: '789 Third Street, City, State',
              phoneNumber: '+1 345-678-9012',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHotel({
    required String name,
    required String description,
    required String address,
    required String phoneNumber,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              name,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              description,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              address,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              phoneNumber,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

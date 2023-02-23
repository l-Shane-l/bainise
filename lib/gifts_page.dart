import 'package:flutter/material.dart';

class GiftsPage extends StatelessWidget {
  const GiftsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monetary Gifts'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'We would be grateful for any monetary gifts that you would like to give us. You can use any of the following methods to send your gift:',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            TextButton.icon(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.pink,
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                // TODO: Implement Venmo functionality
              },
              icon: const Icon(Icons.attach_money),
              label: const Text(
                'Venmo',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            const SizedBox(height: 16.0),
            TextButton.icon(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.pink,
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                // TODO: Implement PayPal functionality
              },
              icon: const Icon(Icons.attach_money),
              label: const Text(
                'PayPal',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Alternatively, you can also use the following bank account information:',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Bank Name: ABC Bank',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Account Name: John Doe',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Account Number: 1234567890',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

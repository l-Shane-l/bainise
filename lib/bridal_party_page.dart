import 'package:flutter/material.dart';

class BridalPartyPage extends StatelessWidget {
  const BridalPartyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bridal Party Contact Information'),
      ),
      body: Center(
        child: Text(
          'Bridal party contact information will be available soon!',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProgrammePage extends StatelessWidget {
  const ProgrammePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Programme'),
      ),
      body: const Center(
        child: Text(
          'Programme details will be displayed here.',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

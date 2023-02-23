import 'package:flutter/material.dart';

class RSVPPage extends StatefulWidget {
  const RSVPPage({Key? key}) : super(key: key);

  @override
  _RSVPPageState createState() => _RSVPPageState();
}

class _RSVPPageState extends State<RSVPPage> {
  bool _isAttending = false;
  bool _hasAccommodation = false;
  String? _dietaryOption;
  final TextEditingController _additionalNeedsController = TextEditingController();

  void _toggleAttending(bool value) {
    setState(() {
      _isAttending = value;
    });
  }

  void _toggleAccommodation(bool value) {
    setState(() {
      _hasAccommodation = value;
    });
  }

  void _selectDietaryOption(String? value) {
    setState(() {
      _dietaryOption = value;
    });
  }

  void _addAdditionalNeeds() {
    final additionalNeeds = _additionalNeedsController.text;

    if (additionalNeeds.isNotEmpty) {
      // TODO: Save the additional needs to the database.
      _additionalNeedsController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RSVP'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Will you be attending the wedding?',
                style: const TextStyle(fontSize: 20.0),
              ),
              SwitchListTile(
                title: const Text('Yes, I will be attending'),
                value: _isAttending,
                onChanged: _toggleAttending,
              ),
              if (_isAttending)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 16.0),
                    Text(
                      'Do you have any dietary restrictions?',
                      style: const TextStyle(fontSize: 20.0),
                    ),
                    RadioListTile<String>(
                      title: const Text('No dietary restrictions'),
                      value: "no dietary restrictions",
                      groupValue: _dietaryOption,
                      onChanged: _selectDietaryOption,
                    ),
                    RadioListTile<String>(
                      title: const Text('Vegetarian'),
                      value: 'vegetarian',
                      groupValue: _dietaryOption,
                      onChanged: _selectDietaryOption,
                    ),
                    RadioListTile<String>(
                      title: const Text('Vegan'),
                      value: 'vegan',
                      groupValue: _dietaryOption,
                      onChanged: _selectDietaryOption,
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      'Do you need accommodation?',
                      style: const TextStyle(fontSize: 20.0),
                    ),
                    SwitchListTile(
                      title: const Text('Yes, I need accommodation'),
                      value: _hasAccommodation,
                      onChanged: _toggleAccommodation,
                    ),
                    const SizedBox(height: 16.0),
                    TextField(
                      controller: _additionalNeedsController,
                      decoration: const InputDecoration(
                        labelText: 'Additional needs',
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    ElevatedButton(
                      child: const Text('Submit'),
                      onPressed: _addAdditionalNeeds,
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

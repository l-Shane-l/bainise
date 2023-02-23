import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'venue_page.dart';
import 'program_page.dart';
import 'accommodation_page.dart';
import 'bridal_party_page.dart';
import 'gifts_page.dart';
import 'cloud_storage_page.dart';
import 'greeting_card_page.dart';

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
              Expanded(
                child: Column(
                  children: [
                    CustomButton(
                      text: 'View Programme',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProgramPage(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 8.0),
                    CustomButton(
                      text: 'Venue Information',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const VenuePage(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 8.0),
                    CustomButton(
                      text: 'Accommodation Information',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AccommodationPage(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 8.0),
                    CustomButton(
                      text: 'Bridal Party Contact Information',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BridalPartyPage(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 8.0),
                    CustomButton(
                      text: 'Monetary Gifts',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GiftsPage(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 8.0),
                    CustomButton(
                      text: 'Cloud Storage Link/QR code',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CloudStoragePage(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 8.0),
                    CustomButton(
                      text: 'E-Greeting Card',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GreetingCardPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

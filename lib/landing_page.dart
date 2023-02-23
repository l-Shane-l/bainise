import 'package:flutter/material.dart';
import 'accommodation_page.dart';
import 'bridal_party_page.dart';
import 'cloud_storage_page.dart';
import 'custom_button.dart';
import 'gallery_page.dart';
import 'gifts_page.dart';
import 'greeting_card_page.dart';
import 'music_playlist_page.dart';
import 'our_story_page.dart';
import 'photo_wall_page.dart';
import 'program_page.dart';
import 'rsvp_page.dart';
import 'transportation_page.dart';
import 'countdown_timer.dart';
import 'venue_page.dart';

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
              const SizedBox(height: 64.0),
              const Text(
                'Welcome to ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Sandra and Shane\'s ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Wedding App!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
                           const Text(
                'Time till Marriage',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 8.0),
              CountdownTimer(),
              const SizedBox(height: 16.0),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.0,
                  crossAxisSpacing: 16.0,
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
                    CustomButton(
                      text: 'Bridal Party Contact',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BridalPartyPage(),
                          ),
                        );
                      },
                    ),
                    CustomButton(
                      text: 'Gifts',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GiftsPage(),
                          ),
                        );
                      },
                    ),
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
                    CustomButton(
                      text: 'Guest Book',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GreetingCardPage(),
                          ),
                        );
                      },
                    ),
                    CustomButton(
                      text: 'Music Playlist',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MusicPlaylistPage(),
                          ),
                        );
                      },
                    ),
                             CustomButton(
                      text: 'Transportation',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TransportationPage(),
                          ),
                        );
                      },
                    ),
                    CustomButton(
                      text: 'Gallery',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GalleryPage(),
                          ),
                        );
                      },
                    ),
                    CustomButton(
                      text: 'Our Story',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OurStoryPage(),
                          ),
                        );
                      },
                    ),
                    CustomButton(
                      text: 'Photo Wall',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PhotoWallPage(),
                          ),
                        );
                      },
                    ),
                    CustomButton(
                      text: 'RSVP',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RSVPPage(),
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


import 'package:flutter/material.dart';

class OurStoryPage extends StatelessWidget {
  const OurStoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Story'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildStoryCard(
              context,
              'January 1, 2010',
              'We met for the first time at a party and instantly hit it off.',
            ),
            _buildStoryCard(
              context,
              'June 15, 2012',
              'We went on our first date and had a romantic dinner at a local restaurant.',
            ),
            _buildStoryCard(
              context,
              'August 31, 2015',
              'Shane proposed to Sandra on a romantic trip to Paris.',
            ),
            _buildStoryCard(
              context,
              'June 18, 2016',
              'We got married in a beautiful outdoor ceremony surrounded by family and friends.',
            ),
            _buildStoryCard(
              context,
              'April 3, 2018',
              'We welcomed our first child, a baby girl named Emily.',
            ),
            _buildStoryCard(
              context,
              'January 7, 2021',
              'We celebrated our 5th wedding anniversary and are looking forward to many more years together.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStoryCard(BuildContext context, String date, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  text,
                  style: const TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

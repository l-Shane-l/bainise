import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  GalleryPage({Key? key}) : super(key: key);

  final List<String> _imageUrls = [
    'https://picsum.photos/300/300?random=1',
    'https://picsum.photos/300/300?random=2',
    'https://picsum.photos/300/300?random=3',
    'https://picsum.photos/300/300?random=4',
    'https://picsum.photos/300/300?random=5',
    'https://picsum.photos/300/300?random=6',
    'https://picsum.photos/300/300?random=7',
    'https://picsum.photos/300/300?random=8',
    'https://picsum.photos/300/300?random=9',
    'https://picsum.photos/300/300?random=10',
    'https://picsum.photos/300/300?random=11',
    'https://picsum.photos/300/300?random=12',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: _imageUrls.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Image.network(_imageUrls[index], fit: BoxFit.cover);
        },
      ),
    );
  }
}

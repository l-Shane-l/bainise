import 'package:flutter/material.dart';

class PhotoWallPage extends StatefulWidget {
  const PhotoWallPage({Key? key}) : super(key: key);

  @override
  _PhotoWallPageState createState() => _PhotoWallPageState();
}

class _PhotoWallPageState extends State<PhotoWallPage> {
  final List<Photo> _photos = [    Photo(      image: 'https://picsum.photos/300/300?random=1',      caption: 'Our first kiss as a married couple ❤️',      comments: [        Comment(author: 'John', text: 'Beautiful picture!'),        Comment(author: 'Jane', text: 'Congratulations!'),      ],
    ),
    Photo(
      image: 'https://picsum.photos/300/300?random=2',
      caption: 'Emily\'s first birthday 🎉',
      comments: [
        Comment(author: 'Amy', text: 'She looks so happy!'),
        Comment(author: 'Tom', text: 'Time flies so fast.'),
      ],
    ),
    Photo(
      image: 'https://picsum.photos/300/300?random=3',
      caption: 'Our trip to Hawaii 🌴',
      comments: [
        Comment(author: 'Kate', text: 'I want to go there too!'),
        Comment(author: 'Sam', text: 'Looks like a great time.'),
      ],
    ),
  ];

  final TextEditingController _captionController = TextEditingController();
  String? _imageUrl;

  void _addPhoto() async {
    final caption = _captionController.text;

    if (caption.isNotEmpty && _imageUrl != null) {
      final photo = Photo(
        image: _imageUrl!,
        caption: caption,
        comments: [],
      );

      setState(() {
        _photos.add(photo);
        _captionController.clear();
        _imageUrl = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Wall'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _photos.length,
              itemBuilder: (BuildContext context, int index) {
                final photo = _photos[index];

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.network(photo.image),
                      const SizedBox(height: 8.0),
                      Text(photo.caption),
                      const SizedBox(height: 8.0),
                      ...photo.comments.map((comment) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Text('${comment.author}: ${comment.text}'),
                        );
                      }),
                      const SizedBox(height: 16.0),
                      TextField(
                        decoration: const InputDecoration(
                          labelText: 'Add a comment',
                        ),
                        onSubmitted: (text) {
                          setState(() {
                            photo.comments.add(Comment(
                              author: 'You',
                              text: text,
                            ));
                          });
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const Divider(height: 1.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _captionController,
                    decoration: const InputDecoration(
                      labelText: 'Caption',
                    ),
                     onChanged: (text) {
                      setState(() {
                        // Update the caption when the user types in the text field.
                      });
                    },
                  ),
                ),
                const SizedBox(width: 8.0),
                IconButton(
                  icon: const Icon(Icons.image),
                  onPressed: () async {
                    // TODO: Implement image selection logic.
                  },
                ),
                const SizedBox(width: 8.0),
                ElevatedButton(
                  child: const Text('Add'),
                  onPressed: _addPhoto,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Photo {
  final String image;
  final String caption;
  final List<Comment> comments;

  const Photo({
    required this.image,
    required this.caption,
    required this.comments,
  });
}

class Comment {
  final String author;
  final String text;

  const Comment({
    required this.author,
    required this.text,
  });
}

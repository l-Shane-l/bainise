import 'package:flutter/material.dart';

class Song {
  final String title;
  final String artist;
  int votes;

  Song({required this.title, required this.artist, this.votes = 0});
}

class MusicPlaylistPage extends StatefulWidget {
  const MusicPlaylistPage({Key? key}) : super(key: key);

  @override
  _MusicPlaylistPageState createState() => _MusicPlaylistPageState();
}

class _MusicPlaylistPageState extends State<MusicPlaylistPage> {
  final List<Song> _songs = [
    Song(title: 'Song 1', artist: 'Artist 1', votes: 5),
    Song(title: 'Song 2', artist: 'Artist 2', votes: 10),
    Song(title: 'Song 3', artist: 'Artist 3', votes: 3),
    Song(title: 'Song 4', artist: 'Artist 4', votes: 7),
  ];

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _artistController = TextEditingController();

  void _addSong() {
    final title = _titleController.text;
    final artist = _artistController.text;

    if (title.isNotEmpty && artist.isNotEmpty) {
      setState(() {
        _songs.add(Song(title: title, artist: artist));
      });

      _titleController.clear();
      _artistController.clear();
    }
  }

  void _voteForSong(Song song) {
    setState(() {
      song.votes += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Music Playlist'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Song Title',
              ),
            ),
            TextField(
              controller: _artistController,
              decoration: const InputDecoration(
                labelText: 'Artist',
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _addSong,
              child: const Text('Add Song'),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: _songs.length,
                itemBuilder: (BuildContext context, int index) {
                  final song = _songs[index];

                  return ListTile(
                    title: Text(song.title),
                    subtitle: Text(song.artist),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('${song.votes}'),
                        IconButton(
                          onPressed: () => _voteForSong(song),
                          icon: const Icon(Icons.thumb_up),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

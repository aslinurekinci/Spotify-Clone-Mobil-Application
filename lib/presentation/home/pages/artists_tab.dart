
import 'package:flutter/material.dart';


class Artist {
  final String name;
  final String imageUrl;
  final String genre;

  const Artist({
    required this.name,
    required this.imageUrl,
    required this.genre,
  });
}


const List<Artist> _demoArtists = [
  Artist(name: 'The Weeknd', imageUrl: 'assets/artists/the_weeknd.jpg', genre: 'Pop, R&B'),
  Artist(name: 'Taylor Swift', imageUrl: 'assets/artists/taylor_swift.jpg', genre: 'Pop, Country'),
  Artist(name: 'Drake', imageUrl: 'assets/artists/drake.jpg', genre: 'Hip Hop, Rap'),
  Artist(name: 'Billie Eilish', imageUrl: 'assets/artists/billie_eilish.jpg', genre: 'Pop, Alt'),
  Artist(name: 'Ed Sheeran', imageUrl: 'assets/artists/ed_sheeran.jpg', genre: 'Pop, Folk'),
  Artist(name: 'Dua Lipa', imageUrl: 'assets/artists/dua_lipa.jpg', genre: 'Pop, Dance'),

];

class ArtistsTab extends StatelessWidget {
  const ArtistsTab({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: ListView.builder(


        itemCount: _demoArtists.length,
        itemBuilder: (context, index) {
          final artist = _demoArtists[index];
          return _ArtistListItem(artist: artist);
        },
      ),
    );
  }
}

class _ArtistListItem extends StatelessWidget {
  final Artist artist;
  const _ArtistListItem({required this.artist});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        print('${artist.name} tıklandı!');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Container(
                width: 80,
                height: 80,
                color: Colors.grey.shade800,
                child: Center(
                  child: Text(
                    artist.name[0],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  artist.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Artist - ${artist.genre}',
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Icon(Icons.chevron_right, color: Colors.grey.shade400),
          ],
        ),
      ),
    );
  }
}
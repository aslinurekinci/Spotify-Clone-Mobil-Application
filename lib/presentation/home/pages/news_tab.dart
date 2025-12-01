
import 'package:flutter/material.dart';

class NewsTab extends StatelessWidget {
  const NewsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(top: 16.0, right: 16.0, bottom: 8.0),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              'Good Afternoon',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SliverGrid.count(
          crossAxisCount: 2,
          childAspectRatio: 3.0,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          children: const <Widget>[
            _SmallPlaylistCard(title: 'Liked Songs', subtitle: '600+ songs'),
            _SmallPlaylistCard(title: 'Daily Mix 1', subtitle: 'Billie Eilish'),
            _SmallPlaylistCard(title: 'Release Radar', subtitle: 'New music'),
            _SmallPlaylistCard(title: 'Workout Mix', subtitle: 'High intensity'),
          ],
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 16.0),
            child: Text(
              'Made for you',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return const _LargeAlbumCard(
                  imageUrl: 'assets/app_images/demo_artist_cover.jpg',
                  title: 'Billie Eilish',
                  subtitle: 'Artist',
                );
              },
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 100)),
      ],
    );
  }
}

class _SmallPlaylistCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const _SmallPlaylistCard({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 45, 45, 45),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Container(width: 60, color: Colors.green),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                title,
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LargeAlbumCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const _LargeAlbumCard({required this.imageUrl, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Image.asset(
            'assets/images/eilish.png',
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            subtitle,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
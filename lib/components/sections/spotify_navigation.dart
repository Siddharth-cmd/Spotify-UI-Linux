import 'package:flutter/material.dart';
import 'package:spotifyclone/components/buttons/navigation_button.dart';
import 'package:spotifyclone/data/data.dart';

import '../my_library_playlists.dart';

class SpotifyNavigation extends StatelessWidget {
  const SpotifyNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20.0),
          child: Image.asset(
            'assets/spotify_logo.png',
            height: 45.0,
            filterQuality: FilterQuality.high,
          ),
        ),
        NavigationButton(
          label: "Home",
          icon: Icons.home,
        ),
        NavigationButton(
          label: "Search",
          icon: Icons.search,
        ),
        NavigationButton(
          label: "Radio",
          icon: Icons.music_note,
        ),
        const SizedBox(
          height: 40.0,
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 30.0, right: 40.0),
          child: const Text(
            "My Library",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        MyLibraryPlaylists(
          data: yourLibrary,
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 30.0, right: 40.0),
          child: const Text(
            "My Playlists",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        MyLibraryPlaylists(
          data: playlists,
        )
      ],
    );
  }
}

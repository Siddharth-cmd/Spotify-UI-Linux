import 'package:flutter/material.dart';
import 'package:spotifyclone/data/data.dart';

import '../components/sections/public_playlists.dart';
import '../components/sections/spotify_navigation.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  height: double.infinity,
                  width: 300.0,
                  color: const Color(0xFF000000),
                  child: const SpotifyNavigation(),
                ),
                Expanded(
                  child: PublicPlaylists(
                    playlist: lofihiphopPlaylist,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100.0,
            decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                ),
                color: Color(0xFF181818)),
          )
        ],
      ),
    );
  }
}

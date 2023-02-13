import 'package:flutter/material.dart';
import 'package:spotifyclone/data/data.dart';

import '../buttons/playlist_header_button.dart';
import 'playlist_table.dart';

class PlaylistHeader extends StatefulWidget {
  Playlist playlist;
  PlaylistHeader({
    super.key,
    required this.playlist,
  });

  @override
  State<PlaylistHeader> createState() => _PlaylistHeaderState();
}

class _PlaylistHeaderState extends State<PlaylistHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 40.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'assets/Playlist.png',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Public Playlist"),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "FlyingHorse",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Random playlist popping in my head.",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.account_circle_sharp,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "Siddharth",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 2.0,
                      ),
                      Text(
                        " .14 Likes",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        " . 243 songs",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        " .2hrs 17 min",
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        const PlaylistHeaderButtons(),
        const SizedBox(
          height: 50.0,
        ),
        PlaylistTable(
          songs: widget.playlist.songs,
        ),
      ],
    );
  }
}

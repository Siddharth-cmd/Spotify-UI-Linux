import 'package:flutter/material.dart';
import 'package:spotifyclone/data/data.dart';

import '../buttons/account_button.dart';
import '../my_chevron.dart';
import '../buttons/upgrade_button.dart';
import 'playlist_header.dart';

class PublicPlaylists extends StatefulWidget {
  Playlist playlist;
  PublicPlaylists({super.key, required this.playlist});

  @override
  State<PublicPlaylists> createState() => _PublicPlaylistsState();
}

class _PublicPlaylistsState extends State<PublicPlaylists> {
  ScrollController? _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 100.0,
        leadingWidth: 400,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Row(
          children: [
            Chevron(
              icon: Icons.chevron_left,
            ),
            const SizedBox(
              width: 5.0,
            ),
            Chevron(
              icon: Icons.chevron_right,
            ),
          ],
        ),
        actions: const [
          UpgradeButton(),
          SizedBox(
            width: 40.0,
          ),
          AccountButton(),
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFF181818),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF94aab9),
              Color(0xFF181818),
            ],
            stops: [0, 0.7],
          ),
        ),
        child: Scrollbar(
          thumbVisibility: true,
          controller: _scrollController,
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            controller: _scrollController,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60.0),
            children: [
              PlaylistHeader(
                playlist: widget.playlist,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

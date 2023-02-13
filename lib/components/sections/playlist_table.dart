import 'package:flutter/material.dart';
import 'package:spotifyclone/model/song.dart';

class PlaylistTable extends StatelessWidget {
  List<Song> songs;
  PlaylistTable({super.key, required this.songs});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        const DataColumn(
          label: Text("#"),
        ),
        const DataColumn(
          label: Text("Title"),
        ),
        const DataColumn(
          label: Text("Artist"),
        ),
        const DataColumn(
          label: Text("Album"),
        ),
        DataColumn(
          label: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.access_time),
          ),
        ),
      ],
      rows: songs.map((e) {
        return DataRow(cells: [
          DataCell(
            Text(e.id),
          ),
          DataCell(
            Text(e.title),
          ),
          DataCell(
            Text(e.artist),
          ),
          DataCell(
            Text(e.album),
          ),
          DataCell(
            Text(e.duration),
          ),
        ]);
      }).toList(),
    );
  }
}

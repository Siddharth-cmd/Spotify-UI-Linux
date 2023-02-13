// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyLibraryPlaylists extends StatelessWidget {
  List<String> data;
  MyLibraryPlaylists({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scrollbar(
        thumbVisibility: true,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 40.0),
                  child: Text(
                    data[index],
                    style: const TextStyle(
                      color: Color(0xFFb3b3b3),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                )
              ],
            );
          },
          itemCount: data.length,
        ),
      ),
    );
  }
}

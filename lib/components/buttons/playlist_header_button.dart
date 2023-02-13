import 'package:flutter/material.dart';

class PlaylistHeaderButtons extends StatefulWidget {
  const PlaylistHeaderButtons({
    Key? key,
  }) : super(key: key);

  @override
  State<PlaylistHeaderButtons> createState() => _PlaylistHeaderButtonsState();
}

class _PlaylistHeaderButtonsState extends State<PlaylistHeaderButtons> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 30.0),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.play_circle,
              size: 60.0,
              color: Color(0xFF1ed760),
            ),
          ),
        ),
        const SizedBox(
          width: 30.0,
        ),
        Container(
          margin: const EdgeInsets.only(top: 30.0, left: 25.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(color: Colors.grey, width: 4.0)),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.download_rounded,
            ),
          ),
        ),
        const SizedBox(
          width: 30.0,
        ),
        Container(
          margin: const EdgeInsets.only(top: 30.0, left: 10.0),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.copy,
              size: 30,
            ),
          ),
        ),
        const Spacer(),
        Expanded(
          child: isClicked
              ? TextFormField(
                  decoration: InputDecoration(
                      hintText: "Search any song",
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isClicked = false;
                          });
                        },
                        child: const Icon(
                          Icons.cancel,
                        ),
                      )),
                )
              : IconButton(
                  onPressed: () {
                    setState(() {
                      isClicked = true;
                    });
                  },
                  icon: const Icon(
                    Icons.search,
                  ),
                ),
        ),
        const SizedBox(
          width: 30.0,
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_downward_outlined,
            color: Colors.grey,
          ),
          label: Text(
            "Custom order",
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ],
    );
  }
}

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  String label;
  IconData icon;

  NavigationButton({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0, right: 50.0),
      child: TextButton.icon(
        onPressed: () {},
        icon: Icon(
          icon,
          color: Theme.of(context).iconTheme.color,
        ),
        label: Text(
          label,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}

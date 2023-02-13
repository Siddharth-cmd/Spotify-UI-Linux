// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Chevron extends StatelessWidget {
  IconData icon;

  Chevron({super.key, required this.icon});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20.0),
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(left: 20.0),
        decoration: const BoxDecoration(
          color: Colors.black54,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          size: 45,
        ),
      ),
    );
  }
}

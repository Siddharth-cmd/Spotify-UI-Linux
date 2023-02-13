import 'package:flutter/material.dart';

class AccountButton extends StatelessWidget {
  const AccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      margin: const EdgeInsets.only(top: 20.0, right: 30.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
        color: Colors.black,
        shape: BoxShape.rectangle,
      ),
      child: TextButton.icon(
        onPressed: () {},
        icon: const Icon(
          Icons.person_pin_circle_rounded,
          color: Colors.white,
        ),
        label: Text(
          "Siddharth",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}

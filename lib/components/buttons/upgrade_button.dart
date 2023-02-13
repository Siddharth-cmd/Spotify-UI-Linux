import 'package:flutter/material.dart';

class UpgradeButton extends StatefulWidget {
  const UpgradeButton({super.key});

  @override
  State<UpgradeButton> createState() => _UpgradeButtonState();
}

class _UpgradeButtonState extends State<UpgradeButton> {
  Color? hoverColor;
  @override
  void initState() {
    hoverColor = Colors.transparent;
    super.initState();
  }

  void colorChange(bool value) {
    setState(() {
      if (value == true) {
        hoverColor = const Color(0xFF000000);
      } else {
        hoverColor = Colors.transparent;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF4d4d4d),
          width: 1.0,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20.0),
        ),
        color: hoverColor,
        shape: BoxShape.rectangle,
      ),
      child: TextButton(
        onHover: colorChange,
        onPressed: () {},
        child: Text(
          "Upgrade",
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
    );
  }
}

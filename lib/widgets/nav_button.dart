import 'package:flutter/material.dart';

import 'outlined_button.dart';

class NavButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color color;

  const NavButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = Colors.orange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      borderSide: BorderSide(
        color: color,
      ),
      onPressed: onPressed,
      highlightedBorderColor: color,
      child: Text(text),
    );
  }
}



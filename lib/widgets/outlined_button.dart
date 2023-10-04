import 'package:flutter/material.dart';

class OutlineButton extends StatelessWidget {
  final Text child;
  final BorderSide borderSide;
  final Function onPressed;
  final Color highlightedBorderColor;

  const OutlineButton({
    Key? key,
    required this.child,
    required this.borderSide,
    required this.onPressed,
    required this.highlightedBorderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.04,
      width: MediaQuery.of(context).size.width*0.1,
      decoration: BoxDecoration(
        border: Border.fromBorderSide(borderSide),
      ),
      child: InkWell(
        onTap: () => onPressed(),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}

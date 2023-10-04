import 'package:flutter/material.dart';

class MainHead extends StatelessWidget {
  final String head;
  final double headSize;
  final double symmetripadding;
  const MainHead({
    required this.headSize,
    required this.head,
    required this.symmetripadding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: symmetripadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            head,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: headSize),
          ),
          const SizedBox(
            width: double.infinity,
            child: Divider(
              color: Colors.amber,
            ),
          )
        ],
      ),
    );
  }
}

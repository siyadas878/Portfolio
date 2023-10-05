import 'package:flutter/material.dart';

class MainHead extends StatelessWidget {
  final String head;
  final double headSize;
  final double? symmetripadding;
  final double? dividerwidth;
  const MainHead({
    required this.headSize,
    required this.head,
    this.symmetripadding,
    this.dividerwidth,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: symmetripadding!),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            head,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: headSize),
          ),
           SizedBox(
            width: dividerwidth!,
            child:const Divider(
              color: Colors.amber,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HeadAndDescription extends StatelessWidget {
  final String head;
  final String description;
  final double? boxwidth;
  final double? subtitlesize;
  final double? descriptionsize;
  final double? boxwidths;
  const HeadAndDescription({
    this.boxwidths,
    required this.head,
    required this.description,
    required this.descriptionsize,
    required this.subtitlesize,
    super.key,
    required this.size, this.boxwidth,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Card(
        child: SizedBox(
          width: boxwidth,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  head,
                  style: TextStyle(color: Colors.amber, fontSize: subtitlesize),
                ),
                SizedBox(height: size.height*0.01,),
                Text(description,
                style: TextStyle(color: Colors.white, fontSize: descriptionsize))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class SpaceBetweenElements extends StatelessWidget {
  const SpaceBetweenElements({
    super.key,
    required this.isMobile,
    required this.size,
  });

  final bool isMobile;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SingleChildScrollView(
        child: SizedBox(
          height: isMobile?
          size.height*0.15:0.1,
        )
      ),
    );
  }
}


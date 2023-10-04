import 'package:flutter/material.dart';
import '../../widgets/nav_button.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: const EdgeInsets.all(30),
          children: [
            NavButton(text: 'First', onPressed: () {}),
            SizedBox(
              height: size.height * 0.03,
            ),
            NavButton(text: 'Second', onPressed: () {}),
            SizedBox(
              height: size.height * 0.03,
            ),
            NavButton(text: 'Third', onPressed: () {}),
          ],
        ),
      );
  }
}


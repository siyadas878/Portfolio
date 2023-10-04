import 'package:flutter/material.dart';
import 'package:potfolio/widgets/nav_button.dart';

import '../../const/const.dart';

class AppBarForBigScreen extends StatelessWidget {
  const AppBarForBigScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
        title: const Text('I\'am Ziyad'),
        leading: null,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                NavButton(text: 'First', onPressed: () {}),
                sizedbox,
                NavButton(text: 'Second', onPressed: () {}),
                sizedbox,
                NavButton(text: 'Third', onPressed: () {}),
              ],
            ),
          )
        ],
      );
  }
}


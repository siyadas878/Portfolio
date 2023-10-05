import 'package:flutter/material.dart';
import 'package:potfolio/widgets/nav_button.dart';

import '../../const/const.dart';

class AppBarForBigScreen extends StatelessWidget {
  const AppBarForBigScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SliverAppBar(
      toolbarHeight: size.height*0.07,
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


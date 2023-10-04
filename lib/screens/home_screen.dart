import 'package:flutter/material.dart';
import 'package:potfolio/screens/widgets/appbar_for_big.dart';
import 'package:potfolio/screens/widgets/drawer.dart';
import 'package:potfolio/screens/widgets/gridview_projects.dart';
import 'package:potfolio/screens/widgets/main_head.dart';
import 'package:potfolio/screens/widgets/profile_widget.dart';
import 'package:potfolio/screens/widgets/space_between.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 700;
        return Scaffold(
          body: SafeArea(
            child: CustomScrollView(
              slivers: <Widget>[
                isMobile
                    ? const SliverAppBar(
                        title: Text("I'm Ziyad"),
                        floating: false,
                        pinned: true,
                      )
                    : const AppBarForBigScreen(),
                SliverToBoxAdapter(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        isMobile
                            ? const SizedBox(
                                width: double.infinity,
                                child: Profile(circleradius: 100, fsize: 25),
                              )
                            : SizedBox(
                                width: double.infinity,
                                height: size.height * 0.8,
                                child:
                                    const Profile(circleradius: 150, fsize: 35),
                              ),
                      ],
                    ),
                  ),
                ),
                SpaceBetweenElements(isMobile: isMobile, size: size),
                SliverToBoxAdapter(
                  child: SingleChildScrollView(
                    child: MainHead(
                        head: 'About',
                        headSize: isMobile ? 20 : 30,
                        symmetripadding: isMobile ? 10 : 20),
                  ),
                ),
                SpaceBetweenElements(isMobile: isMobile, size: size),
                SliverToBoxAdapter(
                  child: SingleChildScrollView(
                    child: MainHead(
                        head: 'Project',
                        headSize: isMobile ? 20 : 30,
                        symmetripadding: isMobile ? 10 : 20),
                  ),
                ),
                
                GridviewOfProjects(isMobile: isMobile, size: size),
                
              ],
            ),
          ),
          drawer: isMobile
              ? AppDrawer(size: size)
              : null,
        );
      },
    );
  }
}


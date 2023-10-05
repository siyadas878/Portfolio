import 'package:flutter/material.dart';
import 'package:potfolio/screens/widgets/about_widget.dart';
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
        final isMobile = constraints.maxWidth < 800;
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
                                    const Profile(circleradius: 200, fsize: 35),
                              ),
                      ],
                    ),
                  ),
                ),
                SpaceBetweenElements(isMobile: isMobile, size: size),
                SliverToBoxAdapter(
                  child: SingleChildScrollView(
                    child: MainHead(
                      dividerwidth: double.infinity,
                        head: 'About',
                        headSize: isMobile ? 20 : 32,
                        symmetripadding: isMobile ? 10 : 20),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        isMobile
                            ? const SizedBox(
                                width: double.infinity,
                                child: About()
                              )
                            : SizedBox(
                                width: double.infinity,
                                height: size.height * 0.8,
                                child:const About()
                              ),
                      ],
                    ),
                  ),
                ),
                SpaceBetweenElements(isMobile: isMobile, size: size),
                SliverToBoxAdapter(
                  child: SingleChildScrollView(
                    child: MainHead(
                      dividerwidth: double.infinity,
                        head: 'Project',
                        headSize: isMobile ? 20 : 32,
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


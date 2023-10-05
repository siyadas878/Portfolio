import 'package:flutter/material.dart';
import 'experse_widget.dart';
import 'head_description_widget.dart';

class About extends StatelessWidget {
  const About({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 800;
          return isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    HeadAndDescription(
                        descriptionsize: 17,
                        subtitlesize: 20,
                        boxwidth: double.infinity,
                        head: 'About Me',
                        description:
                            '"I\'m a passionate Flutter developer with a strong foundation in mobile app development. With a keen eye for UI/UX design and a commitment to delivering high-quality, performant applications, I thrive in turning innovative ideas into reality. My expertise includes building cross-platform mobile apps that provide exceptional user experiences, and I\'m always eager to stay up-to-date with the latest trends and technologies in the Flutter ecosystem."',
                        size: size),
                    HeadAndDescription(
                        descriptionsize: 17,
                        subtitlesize: 20,
                        boxwidth: double.infinity,
                        head: 'Exper In',
                        description:
                            'Flutter, Dart, Provider, GetX, REST API, Firebase,Hive, GitHub, MVVM, DDD, Data Structures',
                        size: size),
                    HeadAndDescription(
                        descriptionsize: 17,
                        subtitlesize: 20,
                        boxwidth: double.infinity,
                        head: 'Familiar-With',
                        description:
                            'Firebase FCM, Google Map, Payment Gateways, HTML, Javascript, CSS, Bootstrap, Java',
                        size: size),
                        SizedBox(
                          height: size.height*0.03,
                        ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Card(
                        child: ExpertisePart(
                            descriptionsize: 17,
                            subtitlesize: 20,
                            headsize: 20,
                            boxwidth: size.width * 0.65,
                            iconsize: 30,
                            size: size),
                      ),
                    )
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeadAndDescription(
                            descriptionsize: 20,
                            subtitlesize: 25,
                            boxwidth: size.width * 0.4,
                            head: 'About Me',
                            description:
                                '"I\'m a passionate Flutter developer with a strong foundation in mobile app development. With a keen eye for UI/UX design and a commitment to delivering high-quality, performant applications, I thrive in turning innovative ideas into reality. My expertise includes building cross-platform mobile apps that provide exceptional user experiences, and I\'m always eager to stay up-to-date with the latest trends and technologies in the Flutter ecosystem."',
                            size: size),
                        HeadAndDescription(
                            descriptionsize: 20,
                            subtitlesize: 25,
                            boxwidth: size.width * 0.4,
                            head: 'Exper In',
                            description:
                                'Flutter, Dart, Provider, GetX, REST API, Firebase,Hive, GitHub, MVVM, DDD, Data Structures',
                            size: size),
                        HeadAndDescription(
                            descriptionsize: 20,
                            subtitlesize: 25,
                            boxwidth: size.width * 0.4,
                            head: 'Familiar-With',
                            description:
                                'Firebase FCM, Google Map, Payment Gateways, HTML, Javascript, CSS, Bootstrap, Java',
                            size: size),
                      ],
                    ),
                    ExpertisePart(
                        descriptionsize: 20,
                        subtitlesize: 25,
                        headsize: 28,
                        boxwidth: size.width * 0.4,
                        iconsize: 60,
                        size: size)
                  ],
                );
        },
      ),
    );
  }
}

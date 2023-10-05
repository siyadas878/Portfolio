import 'package:flutter/material.dart';

import 'head_description_widget.dart';
import 'main_head.dart';

class ExpertisePart extends StatelessWidget {
  final double iconsize;
  final double boxwidth;
  final double headsize;
  final double? subtitlesize;
  final double? descriptionsize;
  const ExpertisePart(
      {super.key,
      required this.size,
      required this.descriptionsize,
      required this.subtitlesize,
      required this.iconsize,
      required this.boxwidth,
      required this.headsize});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MainHead(
                  dividerwidth: size.width * 0.1,
                  symmetripadding: 2,
                  headSize: headsize,
                  head: 'My Expertise'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    ExpertiseRow(
                        descriptionsize: descriptionsize,
                        subtitlesize: subtitlesize,
                        boxicon: Icons.android,
                        boxwidth: boxwidth,
                        iconsize: iconsize,
                        title: 'Android App Development',
                        description:
                            'Experienced flutter developer skilled in all aspects of android app development, From designed to implementation, with a strong focus on quality and timely delivery.',
                        size: size),
                    ExpertiseRow(
                        descriptionsize: descriptionsize,
                        subtitlesize: subtitlesize,
                        boxicon: Icons.apple,
                        boxwidth: boxwidth,
                        iconsize: iconsize,
                        title: 'IOS App Development',
                        description:
                            'Expert in designing, developing and delivering quality IOS apps on time and within budget. Also expert in building user_friendly and visually appearing interfaces, as well as optimizing performance and scalability.',
                        size: size),
                    ExpertiseRow(
                        descriptionsize: descriptionsize,
                        subtitlesize: subtitlesize,
                        boxicon: Icons.web,
                        boxwidth: boxwidth,
                        iconsize: iconsize,
                        title: 'WEB Designing',
                        description:
                            'Expert in developing beautiful and enagaging websites using flutter, HTML, CSS and Bootstrap. Proven ability to create user_friendly and responsive websites that meet the needs of variety of clients.',
                        size: size),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExpertiseRow extends StatelessWidget {
  final String title;
  final String description;
  final double iconsize;
  final double boxwidth;
  final IconData boxicon;
  final double? subtitlesize;
  final double? descriptionsize;
  const ExpertiseRow(
      {super.key,
      required this.descriptionsize,
      required this.subtitlesize,
      required this.size,
      required this.boxicon,
      required this.title,
      required this.iconsize,
      required this.boxwidth,
      required this.description});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          boxicon,
          size: iconsize,
        ),
        HeadAndDescription(
            descriptionsize: descriptionsize,
            subtitlesize: subtitlesize,
            boxwidth: boxwidth,
            head: title,
            description: description,
            size: size),
      ],
    );
  }
}

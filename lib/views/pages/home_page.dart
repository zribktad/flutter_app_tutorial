import 'package:flutter/material.dart';
import 'package:flutter_app/data/constants.dart';
import 'package:flutter_app/views/pages/cource_page.dart';
import 'package:flutter_app/views/widgets/container_widget.dart';
import 'package:flutter_app/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      KValue.basicLayout,
      KValue.cleanUi,
      KValue.fixBugs,
      KValue.KeyConcept,
      KValue.basicLayout,
      KValue.cleanUi,
      KValue.fixBugs,
      KValue.KeyConcept,
    ];

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const HeroWidget(title: "Home hero", nextPage: CoursePage()),
            Column(
              children: [
                ...List.generate(list.length, (index) {
                  return ContainerWidget(
                    title: list[index],
                    description: "Description for ${list[index]}",
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

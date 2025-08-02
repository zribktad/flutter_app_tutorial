import 'package:flutter/material.dart';
import 'package:flutter_app/views/widgets/container_widget.dart';
import 'package:flutter_app/views/widgets/hero_widget.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HeroWidget(title: "Course Hero", nextPage: null),
              Column(
                children: List.generate(5, (index) {
                  return ContainerWidget(
                    title: "Course $index",
                    description: "Description for course $index",
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

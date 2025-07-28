import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "hero-image",
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/images/bg.jpg",
          color: Colors.blue,
          colorBlendMode: BlendMode.darken,
        ),
      ),
    );
  }
}

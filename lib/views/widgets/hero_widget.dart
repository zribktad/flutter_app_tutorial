import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, required this.title, this.nextPage});

  final String title;
  final Widget? nextPage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextPage != null
          ? () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => nextPage!),
              );
            }
          : null,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Hero(
            tag: "hero-image",
            child: AspectRatio(
              aspectRatio: 1920 / 1080,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      "assets/images/bg.jpg",
                      fit: BoxFit.cover,
                      color: Colors.blue,
                      colorBlendMode: BlendMode.darken,
                    ),
                    Lottie.asset(
                      "assets/lotties/lottie_animation2.json",
                      fit: BoxFit.cover,
                      width: 200,
                      height: 200,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}

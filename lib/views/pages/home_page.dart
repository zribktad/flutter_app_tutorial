import 'package:flutter/material.dart';
import 'package:flutter_app/views/widgets/hero_widget.dart';

import '../../data/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const HeroWidget(title: "Home hero"),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome to the Home Page! ",
                      style: KTextStyles.heading,
                    ),
                    Text(
                      "This is where you can find the latest updates and features of our app. Explore and enjoy your experience!",
                      style: KTextStyles.body,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

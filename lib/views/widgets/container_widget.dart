import 'package:flutter/material.dart';
import 'package:flutter_app/data/constants.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome to the Home Page! ", style: KTextStyles.heading),
              Text(
                "This is where you can find the latest updates and features of our app. Explore and enjoy your experience!",
                style: KTextStyles.body,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Expanded and Flexible")),
      body: Column(
        children: [
          SizedBox(
            height: 400,
            child: Column(
              children: [
                Expanded(
                  child: Container(color: Colors.red, child: Text("Expanded")),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.yellow,
                    child: Text("Expanded"),
                  ),
                ),
                Flexible(
                  child: Container(
                    color: Colors.green,
                    child: Text("Flexible"),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(color: Colors.red, child: Text("Expanded")),
              ),
              Expanded(
                flex: 2,
                child: Container(color: Colors.yellow, child: Text("Expanded")),
              ),
              Flexible(
                child: Container(
                  color: Colors.green,
                  height: 100,
                  child: Text("Flexible"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

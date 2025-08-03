import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:flutter_app/views/widgets/container_widget.dart';
import 'package:flutter_app/views/widgets/hero_widget.dart';
import 'package:http/http.dart' as http;

import '../../data/dto/activity.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  void initState() {
    getData();
    super.initState();
    // Any initialization logic can go here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            Activity activity = snapshot.data as Activity;
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    HeroWidget(title: activity.activity, nextPage: null),
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
            );
          }
        },
      ),
    );
  }

  Future getData() async {
    var url = Uri.https('bored-api.appbrewery.com', '/random');

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return Activity.fromJson(convert.jsonDecode(response.body));
    } else {
      throw Exception('Failed to load activity');
    }
  }
}

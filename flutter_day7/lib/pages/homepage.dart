import 'package:flutter/material.dart';
import 'package:flutter_day7/data/course_list.dart';
import 'package:flutter_day7/data/global_data.dart';
import 'package:flutter_day7/models/course.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  void initState() {
     for (var element in courselist) {
      allCourses.add(Course.fromJson(element));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: allCourses.length,
          itemBuilder: (context, index) => Card(
            child: Column(
              children: [
                Text(allCourses[index].title ?? "no title"),
                Image.network(
                  allCourses[index].image ?? "no image",
                  width: 120,
                  height: 120,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text("duration"),
                        Text(allCourses[index].duration ?? "no duration"),
                      ],
                    ),
                    Column(
                      children: [
                        const Text("level"),
                        Text(allCourses[index].leves ?? "no level"),
                      ],
                    ),
                    Column(
                      children: [
                        const Text("rating"),
                        Text(allCourses[index].rating.toString()),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

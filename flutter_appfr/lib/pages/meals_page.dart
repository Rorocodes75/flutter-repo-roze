import 'package:flutter/material.dart';
import 'package:flutter_appfr/data/global_data.dart';
import 'package:flutter_appfr/extension/push.dart';
import 'package:flutter_appfr/models/meals.dart';
import 'package:flutter_appfr/services/api/api.dart';
import 'package:flutter_appfr/widgets/textwidget.dart';

class MealsPage extends StatelessWidget {
  final String name;
  const MealsPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 169, 0, 0),
          title: Text(name),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: FutureBuilder(
              future: Api().getMeal(name),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.connectionState == ConnectionState.done) {
                  return ListView.builder(
                    itemCount: allMeals.length,
                    itemBuilder: (context, index) => InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Column(
                            children: [
                              Image.network(
                                allMeals[index].meal_Img ??
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNNLEL-qmmLeFR1nxJuepFOgPYfnwHR56vcw&s',
                                width: 150,
                                height: 200,
                              ),
                              Textwidget(
                                
                                name: allMeals[index].meal_Name!, maxLines: 5, overflow: TextOverflow.ellipsis,
                               ),
                              SizedBox(
                                height: 2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                } else {
                  return Text("no data");
                }
              }),
        ));
  }
}

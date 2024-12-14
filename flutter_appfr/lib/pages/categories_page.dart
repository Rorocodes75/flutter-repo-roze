import 'package:flutter/material.dart';
import 'package:flutter_appfr/data/global_data.dart';
import 'package:flutter_appfr/services/api/api.dart';
import 'package:flutter_appfr/pages/meals_page.dart';
import 'package:flutter_appfr/models/categories.dart';
import 'package:flutter_appfr/models/meals.dart';
import 'package:flutter_appfr/extension/push.dart';
import 'package:flutter_appfr/widgets/textwidget.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 169, 0, 0),
          title: Text("categories page"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: FutureBuilder(
              future: Api().getCategory(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.connectionState == ConnectionState.done) {
                  return ListView.builder(
                    itemCount: allCategories.length,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        context.push(MealsPage(
                            name: allCategories[index].category_Name!));
                      },
                      child: Card(
                        margin: EdgeInsets.all(8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              allCategories[index].category_Img ??
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNNLEL-qmmLeFR1nxJuepFOgPYfnwHR56vcw&s',
                              width: 100,
                              height: 80,
                            ),
                            SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Textwidget(
                                    name: allCategories[index].category_Id!,
                                    maxLines: 2,
                                    isBold: true,
                                  ),
                                  Textwidget(
                                    name: allCategories[index].category_Name!,
                                    isBold: true,
                                    maxLines: 5,
                                  ),
                                  SizedBox(height: 4),
                                  Textwidget(
                                    name: allCategories[index]
                                        .category_Description!,
                                    maxLines: 5,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                } else {
                  return Text("there's no data ");
                }
              }),
        ));
  }
}
